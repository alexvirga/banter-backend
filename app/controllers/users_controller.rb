class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, include: [:groups]
  end

  def create
    user = User.new(email: params[:email], password: params[:password])
  end
end
