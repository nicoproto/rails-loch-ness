class MonstersController < ApplicationController
  def index
    if params[:location].present?
      @monsters = Monster.near(params[:location], 100)
    else
      @monsters = Monster.geocoded
    end

    @markers = @monsters.map do |monster|
      {
        lat: monster.latitude,
        lng: monster.longitude
      }
    end
  end

  def new; end

  def create; end

  def show; end

  def edit; end

  def update; end

  def destroy; end
end
