class ApplicationController < ActionController::Base
    before_action :getPageSection, :getCatSection, :getHeadCarousel, :getMainE, :getPageBody, :getMainContest
    
    
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

    def getMainE
        @mainE = Oaue.all
    end

    def getMainContest
        @mainContest = Contest.all
    end

    def getPageBody
    end

end
