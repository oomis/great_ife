class GoodsController < InheritedResources::Base

  private

    def good_params
      params.require(:good).permit(:title, :body, :price, :user_id)
    end
end

