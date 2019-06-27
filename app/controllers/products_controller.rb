class ProductsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]

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
			pic_url: params[:product][:pic_url]
		})
		if @product.save
			redirect_to product_path(@product), notice: "You have created a product!"
		end
	end

	def update
		@product = Product.find(params[:id])
		if @product.update({
			name: params[:product][:name],
			description: params[:product][:description],
			price_in_cents: params[:product][:price_in_cents],
			pic_url: params[:product][:pic_url]
		})
			redirect_to root_url
		else
			render :edit
		end
	end

	def show
		@product = Product.find(params[:id])
		@review = Review.new
	end

	def edit
		@product = Product.find(params[:id])

	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to root_url, notice: "Destruction successful!"
	end

end
