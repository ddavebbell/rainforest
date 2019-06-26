class SessionsController < ApplicationController
  def new
  end

#  LOG IN METHOD HERE
  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      flash[:notice] = 'Login successful'

      session[:user_id] = u.id

      redirect_to root_url
    else
      flash[:error] = 'Access DENIED!'
      render :new
    end
  end

# LOG OUT METHOD HERE
  def destroy
    flash[:notice] = 'Logged out successfully'
    session[:user_id] = nil
    redirect_to root_url
  end
end
