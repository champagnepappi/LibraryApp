class SessionsController < ApplicationController
  def new
  end

  def create
user = User.find_by(username: params[:session][:username])
if user && user.authenticated(params[:session][:password])
  log_in user
  redirect_to user
else
  flash[:danger] = "Check your user/password combination"
  render 'new'
end
  end

  def destroy

  end

end