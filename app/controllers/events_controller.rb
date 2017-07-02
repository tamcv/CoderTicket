class EventsController < ApplicationController
  before_action :check_event_changing_permission, only: [:edit]

  def index
    if params[:search].present?
      @events = Event.search(params[:search])
    else
      @events = Event.upcoming
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
    @events = Event.where("#{current_user.id} = ANY(admin_list)")
  end

  def create
    @event = current_user.events.new(event_params)
    @event.admin_list << @current_user.id
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
    unless Event.find(params[:id]).admin_list.include? current_user.id
      flash[:error] = "Permissions denied! You cannot edit this event!"
      redirect_to event_path(id: params[:id])
    end
  end

  def admins
    @event = Event.find(params[:id])
    @admin_list = User.where(id: @event.admin_list)
    @candidates = User.where.not(id: @event.user_id)
  end

  def destroy_admin
    event = Event.find(params[:id])
    user_id = params[:user_id].to_i
    event.admin_list.delete(params[:user_id])
    if event.user_id != user_id
      if event.save
        flash[:success] = "Removed #{User.find(user_id).full_name} from admin list"
      else
        flash[:error] = "Failed to remove #{User.find(user_id).full_name} from admin list"
      end
    else
      flash[:error] = "#{User.find(user_id).full_name} is owner, can not remove from admin list"
    end
    redirect_to admins_events_path(id: params[:id])
  end
  
  def add_admin
    @event = Event.find(params[:id])
    user_id = params[:candidate].to_i
    if user_id and ! @event.admin_list.include? user_id
      @event.admin_list << user_id
      if @event.save
        flash[:success] = "Added #{User.find(user_id).full_name} to admin list"
      else
        flash[:error] = "Failed to add #{User.find(user_id).full_name} to admin list"
      end
    end
    redirect_to admins_events_path(id: params[:id])
  end

  private
  def event_params
    params.require(:event).permit!
  end
end
