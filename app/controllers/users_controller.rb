class UsersController < ApplicationController
  
  skip_before_filter :authorize, :only => [:new, :create]
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    salt = Digest::SHA1.hexdigest(Time.now.to_s)
    @user = User.create! :name => params[:user][:name], :email => params[:user][:email], :password => User.encrypted_password(params[:user][:password], salt), :salt => salt
    if @user
      session[:user_id] = @user.id
    end
    redirect_to :controller => :user_virtues, :action => :index
  end
  
end
