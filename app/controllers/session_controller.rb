class SessionController < ApplicationController
  skip_before_filter :authorize
  
  def login
    if request.post?
      user = User.authenticate(params[:email], params[:password])
      if user
        session[:user_id] = user.id
        logger.info("logged in as #{user.email}")
        redirect_to(:controller => "user_virtues", :action => "index")
      else
        #it would be really great if it said that login failed
        flash[:notice] = "Login Failed"
        redirect_to(:action => "login")
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged Out!"
    redirect_to(:action => "login")
  end

  def index
    redirect_to(:action => "login")
  end
  

end
