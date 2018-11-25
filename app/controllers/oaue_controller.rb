class OaueController < ApplicationController
  before_action :authenticate_oaue!, only: [:secret, :edit, :destroy]
  def index
  end
end
