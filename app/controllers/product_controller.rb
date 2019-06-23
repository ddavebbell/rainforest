class ProductController < ApplicationController

	def index
		@product = Product.all
		redirect_to './index'
	end

	def new
		@product = Product.new(params[:product])

	end

	def show
		@product = Product.find(params[:id])
	end


end
