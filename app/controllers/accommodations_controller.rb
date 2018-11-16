class AccommodationsController < InheritedResources::Base

  private

    def accommodation_params
      params.require(:accommodation).permit(:title, :body, :price)
    end
end

