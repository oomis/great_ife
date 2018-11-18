class ShopsController < InheritedResources::Base

  

  before_action :authenticate_shop!, only: [:secret, :edit, :destroy]



  private

    def shop_params
      params.require(:shop).permit(:title, :body, :price)
    end
end

