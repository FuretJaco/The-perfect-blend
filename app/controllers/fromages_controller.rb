class FromagesController < ApplicationController
  def home
  end

  def region
  	@les_regions = CheeseLocation.all
  end

  def categorie
  	@les_categories = CheeseCategory.all
  end

  def pate
  	@les_pates = CheesePate.all
  end

  def detail
  	@un_fromage = Cheese.find(params[:id])
    @pairings = Pairing.where("cheese_id=?",params[:id])
    @mariage_vin=Array.new
    @pairings.each do |pairing|
      @wine=Wine.find(pairing.wine_id)
     @mariage_vin.push(@wine)
   end
   

  end

  def fromages_region 
  	@une_region = CheeseLocation.find(params[:id])
  	@les_fromages = Cheese.where("Cheese_location_id = ?", params[:id])
  end

  def fromages_categorie
  	@une_categorie = CheeseCategory.find(params[:id])
  	@les_fromages = Cheese.where("Cheese_category_id = ?", params[:id])
  end

  def fromages_pate
  	@une_pate = CheesePate.find(params[:id])
  	@les_fromages = Cheese.where("Cheese_pate_id = ?", params[:id])
  end 
end
