class Product < ApplicationRecord
	has_many :reviews

	validates :name, :description, :price, presence: true
end
