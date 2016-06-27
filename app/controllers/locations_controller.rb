class LocationsController < ApplicationController
  def index
  	@les_regions = WineLocation.all
  end

  def show
  	@une_region = WineLocation.find(params[:id])
  	@les_vins = Wine.where("wine_location_id =?", params[:id])
  end

  
end
