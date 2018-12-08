class RentsController < InheritedResources::Base

  private

    def rent_params
      params.require(:rent).permit(:title, :body, :price, :image)
    end
end

