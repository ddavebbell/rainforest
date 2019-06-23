class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new(params[:product])
	end

	def show
		@product = Product.find(params[:id])
	end


end
