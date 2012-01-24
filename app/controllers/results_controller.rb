class ResultsController < ApplicationController

  def index

    @start_date = (params[:start_date] && Date.parse(params[:start_date])) || Date.today
    @results = User.find(session[:user_id]).results
  end

  def create
    @result = Result.create! params[:result]
    redirect_to results_path
  end
end
