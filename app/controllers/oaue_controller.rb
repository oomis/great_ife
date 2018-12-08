class OaueController < ApplicationController
  before_action :authenticate_oaue!, only: [:secret, :edit, :destroy]
  def index
  end
  def show
    @oaue = Oaue.find(params[:id])
  end
  
end
