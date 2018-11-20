class RoofsController < ApplicationController
  layout "application"
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_roof, only: [:show, :edit, :update, :destroy]
  layout 'map', only: :index


  def index
    @roofs = Roof.where.not(latitude: nil, longitude: nil)
    @markers = @roofs.map do |roof|
      {
        lng: roof.longitude,
        lat: roof.latitude,
        infoWindow: { content: render_to_string(partial: "/roofs/map_window", locals: { roof: roof }) }
      }
    end
  end

  def show

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
