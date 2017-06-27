class VenuesController < ApplicationController
  def new
    @venue = Venue.new()
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      flash[:success] = "Created venue: #{@venue.name}"
      redirect_to root_path
    else
      flash[:error] = "Failed to create venue: #{@venue.name}"
      render 'new'
    end
  end

  def venue_params
    params.require(:venue).permit(:name, :full_address, :region_id)
  end

end
