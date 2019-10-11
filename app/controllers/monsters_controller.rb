require 'pry'
class MonstersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show price_filter_asc price_filter_dsc review_filter_asc review_filter_dsc]

  def index
    @monsters = Monster.geocoded

    @monsters = @monsters.near(params[:location], 100) if params[:location].present?

   if params[:search_date].present?
      dates = params[:search_date].split(' to ')
      start_date = Date.parse(dates[0])
      end_date = Date.parse(dates[1])

      reservations = @monsters.collect(&:reservations).flatten
      conflict_reservations = reservations.select do |reservation|
        reservation.overlaps?(start_date, end_date) && reservation.status == 'confirmed'
      end

      conflict_monsters = conflict_reservations.collect(&:monster).uniq

      @monsters = @monsters.reject { |monster| conflict_monsters.include?(monster) }
  end

    @markers = @monsters.map do |monster|
      {
        lat: monster.latitude,
        lng: monster.longitude
      }
    end
  end

  def new
    @monster = Monster.new
  end

  def create; end

  def show
    @monster = Monster.find(params[:id])
    @reservation = Reservation.new
  end

  def edit; end

  def update; end

  def destroy; end

  def price_filter_asc
    @monsters = Monster.order(price: :asc)
    @monsters = @monsters.near(params[:location], 100) if params[:location].present?
  end

  def price_filter_dsc
    @monsters = Monster.order(price: :desc)
    @monsters = @monsters.near(params[:location], 100) if params[:location].present?
  end

  def review_filter_asc
    @monsters = Monster.order(avg_reviews: :asc)
    @monsters = @monsters.near(params[:location], 100) if params[:location].present?
  end

  def review_filter_dsc
    @monsters = Monster.order(avg_reviews: :desc)
    @monsters = @monsters.near(params[:location], 100) if params[:location].present?
  end
end
