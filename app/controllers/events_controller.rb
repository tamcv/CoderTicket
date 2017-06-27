class EventsController < ApplicationController
  def index
    if params[:search].nil? || params[:search].blank?
      @events = Event.upcoming
    else
      @events = Event.find_by_name params[:search]
    end
  end

  def publish
    @event = Event.find(params[:event_id])
    if @event.check_publish?
      @event.publish_event
      redirect_to root_path
    else
      flash[:danger]= "Need at least one ticket type to publish event"
      redirect_to mines_events_path
    end
  end

  def event_list
    @events = current_user.events.where(publish:false)
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new

    @categories = Category.all
    @venues = Venue.all
  end

  private
  def event_params
    params.require(:event).permit!
  end
end
