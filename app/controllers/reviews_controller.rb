class ReviewsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]
before_action :load_review, only: [:new, :show, :destroy]

	def index
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@review = Review.new
	end

	def edit
		@review = Review.find_by(product_id: params[:product_id], user_id: current_user.id)
		@product = Product.find(params[:product_id])
	end

	def create
		@review = Review.new
		@review.assign_attributes({
			name: params[:review][:name],
			text: params[:review][:text],
			product_id: params[:product_id],
			user_id: current_user.id })

			if @review.save
				redirect_to product_path(params[:product_id])
				flash[:notice] = "Review successfully created"
			else
				flash[:notice] = "Nothing happened."
			end
	end

	def update
		@review = Review.find_by(product_id: params[:product_id], user_id: current_user.id)
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

		def destroy
			@review.destroy
			redirect_to root_url, notice: "Destruction successful!"
		end
end
