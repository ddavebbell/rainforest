class ReviewsController < ApplicationController
before_action :load_review, only: [:new, :edit, :show, :update, :destroy]

	def index
		@reviews = Product.first.reviews.all
		@review = Product.find(params[:product_id]).reviews.first
	end

	def show
		@product = Product.find(params[:id])
		@reviews = @product.reviews
	end

	def destroy
		@review.destroy
		redirect_to root_url, notice: "Destruction successful!"
	end

	def new
		@review = Review.new
	end

	def edit

	end

	def create
		@review = Review.new
		@review.assign_attributes(
			name: params[:review][:name],
			text: params[:review][:text],
			product_id: params[:product_id],
			user_id: current_user.id )

			if @review.save
				redirect_to product_path(params[:product_id])
				flash[:notice] = "Review successfully created"
			else
				flash[:notice] = "Nothing happened."
			end
	end

	def update
		@review.assign_attributes(
			name: params[:review][:name],
			text: params[:review][:text],
			product_id: params[:product_id],
			user_id: current_user.id )

			if @review.save
				redirect_to product_path(params[:product_id])
				flash[:notice] = "Review successfully updated"
			else
				flash[:notice] = "Nothing happened."
			end
	end
end
