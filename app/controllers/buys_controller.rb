class BuysController < InheritedResources::Base
  #load_and_authorize_resource

  before_action :authenticate_buy!, only: [:secret, :edit, :destroy]

  def current_ability
    @current_ability ||= ::Ability.new(current_buy)
  end

  private

    def buy_params
      params.require(:buy).permit(:title, :body, :price, :image)
    end
end

