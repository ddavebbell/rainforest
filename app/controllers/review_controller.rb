class ReviewController < ApplicationController

	def index
		@reviews = Product.reviews.all
		@review = Product.find_by(params[:id]).reviews.first
	end

	def show
		@review = Review.find_by(params[:id])
	end

	def new
		@review = Review.new
	end

	def delete
		@review = Review.(params[:id]).destroy
	end


end
