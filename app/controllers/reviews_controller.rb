class ReviewsController < ApplicationController
  def index; end

  def new
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new
  end

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @monster = @reservation.monster
    @review = Review.new(
      text: review_params[:text],
      integer: review_params[:integer],
      monster: @monster,
      user_id: current_user.id,
      reservation_id: @reservation.id
    )
    @review.save ? (redirect_to monster_path(@monster)) : (render :new)
  end

  def show; end

  private

  def review_params
    params.require(:review).permit(:text, :integer)
  end
end
