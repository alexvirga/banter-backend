class AuthController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {
               email: user,
               token: JWT.encode({ userId: user.id }, ENV["JWT_SECRET"]),
             }
    else
      render json: { errors: "invalid email/password combination" }
    end
  end

  def autologin
    token = request.headers["Authorization"]
    if token != "undefined"
      user_id = JWT.decode(token, ENV["JWT_SECRET"])[0]["userId"]
      user = User.find(user_id)
      render json: {
               email: user,
               token: JWT.encode({ userId: user.id }, ENV["JWT_SECRET"]),
             }
    else
      render json: { errors: "invalid username/password combination" }
    end
  end
end
