class ContestController < ApplicationController
  def index
  end
  def show
    @contest = Contest.find(params[:id])
  end
end
