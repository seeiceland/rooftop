class RoofsController < ApplicationController
  before_action :set_roof, only: [:show, :edit, :update, :destroy]

  def index
    @roofs = Roof.all
  end

  def show

  end

  def new
    @roof = Roof.new
  end

  def create
    @roof = Roof.new(roof_params)
    if @roof.save
      redirect_to roof_path(@roof)
    else
      render :new
    end
  end

  def update
    @roof.update(roof_params)
    @roof.save
    redirect_to roof_path(@roof)
  end

  private

  def set_roof
    @roof = Roof.find(params[:id])
  end

  def roof_params
    params.require(:roof).permit(:name, :location, :price)
  end
end
