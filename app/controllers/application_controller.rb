class ApplicationController < ActionController::Base
    before_action :getPageSection, :getCatSection, :getHeadCarousel
    def home

    end

    def getPageSection
        @pageSections = Page.all
    end

    def getCatSection
        @catSections = Category.all
    end

    def getHeadCarousel
        @headCarousel = Carousel.all
    end
end
