class ReservationsController < ApplicationController
  def new; end

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

  def edit; end

  def update; end

  private

  def reservation_strong_params
    params.require(:reservation).permit(:start_date)
  end

  def rent_days(from, to)
    Date.parse(to).mjd - Date.parse(from).mjd
  end
end
