class ReviewsController < ApplicationController
	def index
		@reviews = Product.first.reviews.all
		@review = Product.find(params[:product_id]).reviews.first
	end

	def show
		@review = Review.find(params[:product_id])
	end

	def new
		@review = Review.new
	end

	def delete
		@review = Review.find(params[:product_id]).destroy
	end
end
