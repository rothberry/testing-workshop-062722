class PlanetsController < ApplicationController
  def index
    render json: Planet.all
  end

  def create
    planet = Planet.create!(planet_params)
    render json: planet
  end

  private

  def planet_params
    params.permit(:name, :solar_system)
  end
end
