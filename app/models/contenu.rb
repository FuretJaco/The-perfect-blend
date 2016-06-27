class Contenu < ActiveRecord::Base
	has_many :cepages
	has_many :wines
end
