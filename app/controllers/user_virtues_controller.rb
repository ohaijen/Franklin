class UserVirtuesController < ApplicationController

  def index
    @user_virtues = User.find(session[:user_id]).user_virtues
  end

  def new
    @user_virtue = UserVirtue.new
  end

  def create
    @user_virtue = UserVirtue.new(params[:user_virtue])
    @user_virtue.user_id = session[:user_id]
    @user_virtue.save!
    redirect_to :action => :index
  end

  def destroy
    @user_virtue = UserVirtue.find(params[:id])
    @user_virtue.destroy
    redirect_to :controller => :user_virtues, :action => :index
  end

  def show
    
  end

  def add_standard_virtues
    @standard_virtues = Virtue.all
    @standard_virtues.each do |virtue|
      new_virtue = UserVirtue.create! :name => virtue.name, 
        :description => virtue.description,
        :user_id => session[:user_id]
    end
    redirect_to :action => :index
  end

  def add_selected_virtues
    existing_virtues = current_user.user_virtues
    Virtue.all.each do |virtue|
      if params[virtue.name] == "1" && !existing_virtues.detect{|v| v.name == virtue.name}
        UserVirtue.create! :user_id => session[:user_id], :name => virtue.name, :description => virtue.description
      end
    end
    redirect_to :action => :index
  end

  
end
