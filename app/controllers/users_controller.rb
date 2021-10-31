class UsersController < ApplicationController



  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render action: 'create'
    end

  end
  
  def user_params
    params.permit(:name, :email, :password, :company_id, :phone_number, :role)
  end
  
end
