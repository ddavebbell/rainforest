class ReviewsController < ApplicationController
	def index
		@reviews = Product.first.reviews.all
		@review = Product.find(params[:product_id]).reviews.first
	end

	def show
		@product = Product.find(params[:product_id])
		@reviews = @product.reviews
		@review = @product.reviews.last
	end

	def delete
		@review = Review.find(params[:product_id]).destroy
	end

	def new
		@review = Review.new
	end

	def create
		@review = Review.new
		@review.assign_attributes({
			name: params[:name],
			text: params[:text],
			})
			if @review.save
				redirect_to review_path(@review)
				flash[:notice] = "Review successfully created"
			else
				flash[:notice] = "Nothing happened."
			end
	end
end
