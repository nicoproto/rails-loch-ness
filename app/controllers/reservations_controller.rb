class ReservationsController < ApplicationController
  def new; end

  def index
    @reservations = Reservation.where('user_id = ?', current_user.id)
    @pending_reservations = Reservation.where('status = ? AND user_id = ?', 'pending', current_user.id)
    @accepted_reservations = Reservation.where('status = ? AND user_id = ?', 'accepted', current_user.id)
    @rejected_reservations = Reservation.where('status = ? AND user_id = ?', 'rejected', current_user.id)
  end

  def create
    @dates = reservation_strong_params[:start_date].split(" to ")

    @start_date = Date.parse(@dates[0])
    @end_date = Date.parse(@dates[1])
    @monster = Monster.find(params[:monster_id])
    @total_price = @monster.price * (@end_date - @start_date + 1)

    @reservation = Reservation.new(
      start_date: @start_date,
      end_date: @end_date,
      monster: @monster,
      user_id: current_user.id,
      status: 'pending',
      total_price: @total_price
    )

    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @monster = Monster.find(@reservation.monster_id)
  end

  def update
    @reservation = Reservation.find(params[:id])
    @monster = Monster.find(@reservation.monster_id)

    @dates = reservation_strong_params[:start_date].split(" to ")
    @start_date = Date.parse(@dates[0])
    @end_date = Date.parse(@dates[1])

    @reservation.total_price = @monster.price * (@end_date - @start_date + 1)
    @reservation.start_date = @start_date
    @reservation.end_date = @end_date

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def destroy
    Reservation.destroy(params[:id])
    redirect_to reservations_path
  end

  private

  def reservation_strong_params
    params.require(:reservation).permit(:start_date)
  end

  def rent_days(from, to)
    Date.parse(to).mjd - Date.parse(from).mjd
  end
end
