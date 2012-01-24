class VirtuesController < ApplicationController
  
  def index
    @virtues = Virtue.all
  end
  
  def new
    @user_virtue = UserVirtue.new
  end

  end
