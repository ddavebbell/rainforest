class Review < ApplicationRecord

	belongs_to :product
	has_one :user

	# validates :name, :text, presence: true

end
