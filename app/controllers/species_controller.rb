class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render ('species/index.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def new
    @species = Species.new(params[:species])
    render('species/new.html.erb')
  end

  def create
    @species = Species.new(params[:species])
    if @species.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def edit
    @species = Species.find(params[:id])
      render ('species/edit.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(name: params[:name])
      render ('species/success.html.erb')
    else
      render ('species/edit.html.erb')
    end
  end
end


