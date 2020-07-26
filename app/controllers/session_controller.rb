class SessionController < ApplicationController
  skip_before_action :check_session, only:[:login, :login_process, :account_verify, :password_updation]


  def login
	 render :layout => false
  end

  def login_process
  	user = User.find_by(email_id: params["email"])
  	if user && user.authenticate(params["password"])
  		session[:user_id] = user.id
  		redirect_to welcome_user_path
  	else
  		redirect_to root_url, alert: "Invalid Username or Password. Please try again."
  	end
  end

  def logout
	session[:user_id] = nil
  	redirect_to login_path
  end

  def account_verify
    @user = User.find(params[:id])
    if @user.present? && @user.email_verify != true
      status = @user.update(email_verify: true)
      redirect_to password_updation_path(user_id: @user.id)
    else
      redirect_to root_url, alert: "Email has been verified already"
    end
  end

  def password_updation
    @user = User.find(params[:user_id])
    render :layout => false
  end

  def welcome_user
	  @user = current_user
  end

end
