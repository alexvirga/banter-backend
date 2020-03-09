class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, include: [:groups]
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      render json: user
    else
      render json: { errors: "email already exist" }

      render json: users, include: [:groups]
    end
  end

  

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
