class UserVirtueController < ActiveRecord::Base
  
  def new
    @user_virtue = UserVirtue.new
  end
  
  def create
    @user_virtue = UserVirtue.create!(params[:user_virtue])
  end
  
end