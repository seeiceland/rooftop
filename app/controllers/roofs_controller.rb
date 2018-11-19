class RoofsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_roof, only: [:show, :edit, :update, :destroy]

  def index
    @roofs = Roof.all
  end

  def show
   @roof
  end

  def new
    @roof = Roof.new
  end

  def create
    @roof = Roof.new(roof_params)
    @roof.user = current_user
    if @roof.save!
      redirect_to roofs_path
    else
      render :new
    end
  end

  def update
    @roof.update(roof_params)
    @roof.save!
    redirect_to roof_path(@roof)
  end

  def destroy
  end

  private

  def set_roof
    @roof = Roof.find(params[:id])
  end

  def roof_params
    params.require(:roof).permit(:name, :location, :price)
  end
end
