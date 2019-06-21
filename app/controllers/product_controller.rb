class ProductController < ApplicationController

	def new
		@product = Product.new
	end

	def create
		@product = Product.create
	end

end
