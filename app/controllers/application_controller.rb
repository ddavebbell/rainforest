class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :current_user

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def load_product
		@product = Product.find(params[:id])
	end

	def load_review
		@review = Review.find(params[:id])
	end

	def ensure_logged_in
		unless current_user
			flash[:alert] = "Please log in"
			redirect_to new_sessions_url
		end
	end

	def ensure_user_owns_product
	  unless current_user == @product.user
	    flash[:alert] = "Please log in"
	    redirect_to new_sessions_url
	  end
	end

	def ensure_user_owns_review
		unless current_user.id == @review.user_id
			flash[:alert] = "You are not authorised for that."
			redirect_to new_sessions_url
		end
	end

end
