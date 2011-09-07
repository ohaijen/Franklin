class VirtueController < ApplicationController
  
  def index
    @virtues = Virtue.all
  end
  

  
end