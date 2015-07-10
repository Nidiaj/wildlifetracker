class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    if params[:region_id].nil?
      @sightings = Sighting.all
    else
      @sightings = Sighting.where(:region_id => params[:region_id])
    end
  end

  def new
    @sighting = Sighting.new(params[:sighting]) # make an instance of new/inject it into view/

    # make a hash called region_options that holds all the regions available to select from
    # in the form key and value
    @regions = Region.all

    render('sightings/new.html.erb') #render view

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end
end