class Product < ApplicationRecord
	has_many :reviews

	validates :name, :description, :price_in_cents, presence: true
	validate :price_in_cents_is_integer

	def price_in_cents_is_integer

	end
end
