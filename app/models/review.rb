class Review < ApplicationRecord

	belongs_to :product

	# validates :name, :text, presence: true

end
