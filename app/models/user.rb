class User < ApplicationRecord

	has_secure_password
	validates :email, presence: true
	
	has_many :products

	def current_user
	  session [:user_id] && User.find(session[:user_id])
	end


end
