class UsersController < ApplicationController
  # POST /users
  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'User was successfully created.'
    else
      render action: "new"
    end
  end

  def create 
  end
  
end
