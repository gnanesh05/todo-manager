class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render plain: "welcome to the application"
    else
      render plain: "this is incorrect password"
    end
  end
end
