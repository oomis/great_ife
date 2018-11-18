class AccommodationsController < InheritedResources::Base

  before_action :authenticate_shop!, only: [:secret, :edit, :destroy, :new]

  private

    def accommodation_params
      params.require(:accommodation).permit(:title, :body, :price)
    end
end

