class DashboardsController < ApplicationController
  def show
    @reservations = Reservation.all.select { |reservation| reservation.monster.user.id == current_user.id }
    @pending_reservations = Reservation.all.select { |reservation| reservation.monster.user.id == current_user.id && reservation.status == "pending" }
    @accepted_reservations = Reservation.all.select { |reservation| reservation.monster.user.id == current_user.id && reservation.status == "confirmed" }
    @rejected_reservations = Reservation.all.select { |reservation| reservation.monster.user.id == current_user.id && reservation.status == "denied" }
  end
end
