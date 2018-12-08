class BuysController < InheritedResources::Base

  private

    def buy_params
      params.require(:buy).permit(:title, :body, :price, :image)
    end
end

