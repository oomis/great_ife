class ShopsController < InheritedResources::Base

  private

    def shop_params
      params.require(:shop).permit(:title, :body, :price)
    end
end

