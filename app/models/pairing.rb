class Pairing < ActiveRecord::Base
	has_many :wines
	has_many :cheeses
end
