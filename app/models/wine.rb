class Wine < ActiveRecord::Base
	belongs_to :wine_color
	belongs_to :wine_location
	belongs_to :contenu
	belongs_to :pairing
end
