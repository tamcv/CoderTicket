class EventsController < ApplicationController
  before_action :check_event_changing_permission, only: [:edit]

  def index
    if params[:search].nil? || params[:search].blank?
      @events = Event.upcoming
    else
      @events = Event.find_by_name params[:search]
    end
  end

  def publish
    @event = Event.find(params[:event_id])
    if @event.check_number_ticket_types?
      @event.publish_event
      redirect_to root_path
    else
      flash[:danger]= "Need at least one ticket type to publish event"
      redirect_to mines_events_path
    end
  end

  def event_list
    @events = current_user.events
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
    @categories = Category.all
    @venues = Venue.all
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "Event updated!"
      redirect_to mines_events_path
    else
      render 'edit'
    end
  end
  
  def show
    @event = Event.find(params[:id])
    @related_events = @event.find_relation

  end

  def new
    @categories = Category.all
    @venues = Venue.all
  end

  def check_event_changing_permission
    if current_user.id != Event.find(params[:id]).user_id
      flash[:error] = "Permissions denied! You cannot edit this event!"
      redirect_to event_path(id: params[:id])
    end
  end

  private
  def event_params
    params.require(:event).permit!
  end
end
