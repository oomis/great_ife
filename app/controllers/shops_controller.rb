class ShopsController < InheritedResources::Base


  before_action :authenticate_shop!, only: [:secret, :edit, :destroy]

  def current_ability
    @current_ability ||= ::Ability.new(current_shop)
  end
  
  def new
    
  end
  

  private

    def shop_params
      params.require(:shop).permit(:title, :body, :price, :image)
    end
end

