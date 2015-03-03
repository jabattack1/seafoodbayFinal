class AdminsController < ApplicationController

    def index
  
      @admin = Admin.all
  end

def create
    # Create the user from params
    # @user = User.new(params[:user])
    if Admin.find_by(email: params['email'])
        status = ({Status: 'Error', Message: 'A user with that email already exists'})

      render :action => 'index'
    	# @user.save
      # Deliver the signup email
    else
    	adminNew = Admin.create({
        first_name: params["first_name"],
        last_name: params["last_name"],
        email: params["email"],
        password: params["password"]
      })

      redirect_to '/admin_session/new'
    end
  end

end