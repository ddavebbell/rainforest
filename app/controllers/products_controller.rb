class ProductsController < ApplicationController
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
			redirect_to product_path(@product)
			flash[:notice] = "Product successfully created"
		else
			flash[:notice] = "Nothing happened."
		end
	end

	def show
		@product = Product.find(params[:id])
	end
end
