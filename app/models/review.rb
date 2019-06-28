class Review < ApplicationRecord

validates :user_id, uniqueness: { scope: :product_id, message: 'should only exist once per product and user' }

	belongs_to :product

	has_one :user

	# validates :name, :text, presence: true

end
