class ProductsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]
before_action :load_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new
		@product.assign_attributes({
			name: params[:product][:name],
			description: params[:product][:description],
			price_in_cents: params[:product][:price_in_cents],
			pic_url: params[:product][:pic_url],
			user_id: current_user.id
		})
		if @product.save
			redirect_to product_path(@product), notice: "You have created a product!"
		end
	end

	def update
		if @product.update({
			name: params[:product][:name],
			description: params[:product][:description],
			price_in_cents: params[:product][:price_in_cents],
			pic_url: params[:product][:pic_url],
			user_id: current_user.id
		})
			redirect_to root_url
		else
			render :edit
		end
	end

	def show
		@review = Review.new
	end

	def edit

	end

	def destroy
		@product.destroy
		redirect_to root_url, notice: "Destruction successful!"
	end

end
