class UsersController < ApplicationController

  def index
  

  end

def create
    # Create the user from params
    # @user = User.new(params[:user])
    if User.find_by(email: params['email'])
        status = ({Status: 'Error', Message: 'A user with that email already exists'})

      render :action => 'index'
    	# @user.save
      # Deliver the signup email
    else
    	userNew = User.create({
        first_name: params["first_name"],
        last_name: params["last_name"],
        phone: params["phone"],
        email: params["email"],
        address: params["address"],
        password: params["password"]
      })

      UserNotifier.send_signup_email(userNew).deliver
      redirect_to '/'
    end
  end

end