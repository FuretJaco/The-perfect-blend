class User < ActiveRecord::Base
	has_secure_password 

	validates :email, uniqueness: true,
						presence: true,
						length: { maximum: 50 } 
	validates :login, uniqueness: true, 
						presence: true, 
						length: {maximum: 20} 
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	def email=(value)
		value = value.strip.downcase
		write_attribute :email, value
	end
end
