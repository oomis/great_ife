class ApplicationController < ActionController::Base
    before_action :getPageSection, :getCatSection, :getHeadCarousel, :getMainEvent, :getPageBody
    
    
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

    def getMainEvent
        @HeadEvents = Oauevent.all
    end

    def getPageBody
    end

end
