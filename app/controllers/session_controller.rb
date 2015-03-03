class SessionController < ApplicationController
  # def new
  #   render :new
  # end

  def create 
  	user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # session[:error] = nil # "Success"
      redirect_to '/'
    else
      @popup_message = "username/password incorrect"

      render :new
    end
  end

  def destroy
  	reset_session
    '/'
  end

end
