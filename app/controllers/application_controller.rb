class ApplicationController < ActionController::Base
    before_action :getPageSection, :getCatSection, :getHeadCarousel, :getMainE, :getPageBody, :getMainContest
    
    
    def home

    end

    def getPageSection
        @pageSections = Page.all.order("created_at DESC")
    end

    def getCatSection
        @catSections = Category.all.order("created_at DESC")
    end

    def getHeadCarousel
        @headCarousel = Carousel.all.order("created_at DESC")
    end

    def getMainE
        @mainE = Oaue.all.order("created_at DESC")
    end

    def getMainContest
        @mainContest = Contest.all.order("created_at DESC")
    end

    def getPageBody
    end

end
