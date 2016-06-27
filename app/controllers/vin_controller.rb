class VinController < ApplicationController
  def home
  end

  #def region
    #@les_regions = WineLocation.all
  #end

  def cepage
    @les_cepages = WineCepage.all
  end

  def detail 
    @un_vin = Wine.find(params[:id])
    
    #@mariage_fromage= Pairing.joins("LEFT OUTER JOIN cheeses ON pairings.cheese_id=cheeses.id").where("wine_id=?", params[:id])
    #Récupération des données de la table fromages pour
    @pairings = Pairing.where("wine_id=?",params[:id])
    @mariage_fromage=Array.new
    @pairings.each do |pairing|
      @cheese=Cheese.find(pairing.cheese_id)
     @mariage_fromage.push(@cheese)

   end
  end

  def couleur
    @les_couleurs = WineColor.all
    #@les_vins = Wine.find(params[:id])
  end

  def vin_couleur
    @une_couleur = WineColor.find(params[:id])
    @les_vins = Wine.where("wine_color_id = ?", params[:id])  
  end

  def vin_cepage
    @un_cepage = WineCepage.find(params[:id])
  end


  def recherche_vin
  end

  #def vin_params
   # params.require(:wines).permit(:name, :description, :year, :wine_color_id, :wine_location_id)
  #end
end
