class EventsController < ApplicationController
  def show
  end

  def index
    @event = Events.all
  end
end
