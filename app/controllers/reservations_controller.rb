class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :accept_reservation, :reject_reservation]
  before_action :set_monster, only: [:edit, :update]

  def new; end

  def index
    @reservations = Reservation.where('user_id = ?', current_user.id)
    update_completed_reservations
  end

  def create
    date_string = reservation_strong_params[:start_date]
    @monster = Monster.find(params[:monster_id])
    @dates = date_string.split(' to ')
    @start_date = Date.parse(@dates[0])
    @end_date = Date.parse(@dates[1])
    @total_price = @monster.price * (@end_date - @start_date + 1)

    @reservation = Reservation.new(
      start_date: @start_date || nil,
      end_date: @end_date || nil,
      monster: @monster,
      user_id: current_user.id,
      status: 'pending',
      total_price: @total_price || nil
      )

    if @reservation.save
      Email::RenterPending.call(current_user, @monster)
      Email::OwnerAccept.call(@monster.user, @monster, current_user)
      (redirect_to reservation_path(@reservation))
    end
  end

  def show; end

  def edit; end

  def update
    @dates = reservation_strong_params[:start_date].split(" to ")
    @start_date = Date.parse(@dates[0])
    @end_date = Date.parse(@dates[1])

    @reservation.total_price = @monster.price * (@end_date - @start_date + 1)
    @reservation.start_date = @start_date
    @reservation.end_date = @end_date

    @reservation.save ? (redirect_to reservations_path) : (render :new)
  end

  def destroy
    Reservation.destroy(params[:id])
    redirect_to reservations_path
  end

  def accept_reservation
    @reservation.status = 'confirmed'
    Email::RenterConfirmation.call(@reservation.user, @reservation.monster) if @reservation.save
    redirect_to dashboard_path
  end

  def reject_reservation
    @reservation.status = 'denied'
    @reservation.save
    redirect_to dashboard_path
  end

  private

  def reservation_strong_params
    params.require(:reservation).permit(:start_date)
  end

  def rent_days(from, to)
    Date.parse(to).mjd - Date.parse(from).mjd
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_monster
    @monster = Monster.find(@reservation.monster_id)
  end

  def update_completed_reservations
    @reservations.each do |reservation|
      if reservation.end_date < Date.today
        reservation.status = 'completed'
        reservation.save
      end
    end
  end
end

