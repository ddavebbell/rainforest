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
		@review.assign_attributes(name: params[:review][:name],
		text: params[:review][:text], product_id: params[:product_id])
			if @review.save
				redirect_to product_path(params[:product_id])
				flash[:notice] = "Review successfully created"
			else
				flash[:notice] = "Nothing happened."
			end
	end

	def edit
		@review = Review.find(params[:review_id])
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
	end

end
