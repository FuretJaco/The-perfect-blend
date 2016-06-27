class Cheese < ActiveRecord::Base
	belongs_to :cheese_location 
	belongs_to :cheese_category
	belongs_to :cheese_pate
	belongs_to :pairing
end
