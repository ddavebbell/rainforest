class Product < ApplicationRecord
	has_many :reviews, dependent: :destroy
	belongs_to :user

	validates :name, :description, :price_in_cents, presence: true
	validate :price_in_cents_is_integer

	def price_in_cents_is_integer
		unless price_in_cents.class == Integer
      errors[:price_in_cents] << 'must be an integer'
    end
	end

	def price_in_dollars
	  price_in_dollars = price_in_cents.to_f / 100
	  sprintf("$%.2f", price_in_dollars)
	end

end
