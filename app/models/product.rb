class Product < ApplicationRecord
	has_many :reviews, dependent: :destroy

	validates :name, :description, :price_in_cents, presence: true
	validate :price_in_cents_is_integer

	def price_in_cents_is_integer
		unless price_in_cents.class == Integer
      errors[:price_in_cents] << 'must be an integer'
    end
	end



end
