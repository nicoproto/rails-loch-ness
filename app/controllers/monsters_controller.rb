class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

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
