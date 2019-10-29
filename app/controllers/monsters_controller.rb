class MonstersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show price_filter_asc price_filter_dsc review_filter_asc review_filter_dsc]

  def index
    @monsters = Monster.geocoded

    if params[:location].present?
      @monsters = @monsters.near(params[:location], 100)
      session[:location] = params[:location]
    else
      session.delete(:location)
    end

    if params[:search_date].present?
      @monsters = filter_by_date(params[:search_date])
      session[:search_date] = params[:search_date]
    else
      session.delete(:search_date)
    end

    @markers = @monsters.map do |monster|
      {
        lat: monster.latitude,
        lng: monster.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { monster: monster }),
        image_url: helpers.asset_url('monsterpin')
      }
    end
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_strong_params)
    @monster.user = current_user
    @monster.save ? (redirect_to monster_path(@monster)) : (render :new)
  end

  def show
    @monster = Monster.find(params[:id])
    @reservation = Reservation.new
  end

  def edit; end

  def update; end

  def destroy; end

  def price_filter_asc
    @monsters = Monster.order(price: :asc)
    @monsters = @monsters.near(session[:location], 100) if session[:location].present?
    @monsters = filter_by_date(session[:search_date]) if session[:search_date].present?
  end

  def price_filter_dsc
    @monsters = Monster.order(price: :desc)
    @monsters = @monsters.near(session[:location], 100) if session[:location].present?
    @monsters = filter_by_date(session[:search_date]) if session[:search_date].present?
  end

  def review_filter_asc
    @monsters = Monster.order(avg_reviews: :asc)
    @monsters = @monsters.near(session[:location], 100) if session[:location].present?
    @monsters = filter_by_date(session[:search_date]) if session[:search_date].present?
  end

  def review_filter_dsc
    @monsters = Monster.order(avg_reviews: :desc)
    @monsters = @monsters.near(session[:location], 100) if session[:location].present?
    @monsters = filter_by_date(session[:search_date]) if session[:search_date].present?
  end

  private

  def monster_strong_params
    params.require(:monster).permit(:name, :price, :address, :description, :photo)
  end

  def filter_by_date(date_string)
    dates = date_string.split(' to ')
    start_date, end_date = Date.parse(dates[0]), Date.parse(dates[1])

    reservations = @monsters.collect(&:reservations).flatten
    conflict_reservations = reservations.select do |reservation|
      reservation.overlaps?(start_date, end_date) && reservation.status == 'confirmed'
    end

    conflict_monsters = conflict_reservations.collect(&:monster).uniq

    @monsters.reject { |monster| conflict_monsters.include?(monster) }
  end
end
