class ShopsController < InheritedResources::Base

  load_and_authorize_resource :class => Shop

  before_action :authenticate_shop!, only: [:secret, :edit, :destroy]

  def current_ability
    @current_ability ||= ::Ability.new(current_shop)
  end
  
  def new
    
  end
  

  private

    def shop_params
      params.require(:shop).permit(:title, :body, :price)
    end
end

