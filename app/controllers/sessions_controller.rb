class SessionsController < ApplicationController
  def new
  end


  def create

    if(params[:session][:user])
      user = User.find_by_login(params[:session][:login])
      type= "User"
    else
      user = Admin.find_by_login(params[:session][:login])
      type= "Admin"

    end


    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:type] = type
      session[:check] = Digest::MD5.hexdigest(session[:user_id].to_s+""+session[:type]).to_s
      redirect_to root_url, :notice => "Logged in!"
    else
     flash[:notice] = "Invalid login or password"
     redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
