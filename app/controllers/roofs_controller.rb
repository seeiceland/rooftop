class RoofsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_roof, only: [:edit, :update, :destroy]
  layout 'map', only: :index


  def index
    query = params.dig(:roofs, :query)
    if query.present?
      @roofs = Roof.where("location ILIKE ?", "%#{query}%").where.not(latitude: nil, longitude: nil)

      @markers = @roofs.map do |roof|
        {
          lng: roof.longitude,
          lat: roof.latitude,
          infoWindow: { content: render_to_string(partial: "/roofs/map_window", locals: { roof: roof }) }
        }
      end
    else
      @roofs = Roof.all
    end
  end

  def new
    @rooftop = Roof.new
  end

  def create
    @rooftop = Roof.new(rooftop_params)
    @rooftop.user = current_user
    respond_to do |format|
      if @rooftop.save
        format.html { redirect_to @rooftop, notice: 'Rooftop was successfully created.' }
        format.json { render :show, status: :created, location: @rooftop }
      else
        format.html { render :new }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end



  def show
    @booking = Booking.new
    @rooftop = Roof.find(params[:id])
  end

  def edit
    respond_to do |format|
      if @rooftop.update(rooftop_params)
        format.html { redirect_to @rooftop, notice: 'Rooftop was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooftop }
      else
        format.html { render :edit }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rooftop.update(rooftop_params)
        format.html { redirect_to @rooftop, notice: 'rooftop was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooftop }
      else
        format.html { render :edit }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rooftop.destroy
      respond_to do |format|
        format.html { redirect_to rooftops_url, notice: 'Rooftop was successfully destroyed.' }
        format.json { head :no_content }
      end
  end

  def create
    @rooftop = Roof.new(rooftop_params)
    @rooftop.user = current_user
    respond_to do |format|
      if @rooftop.save
        format.html { redirect_to @rooftop, notice: 'Rooftop was successfully created.' }
        format.json { render :show, status: :created, location: @rooftop }
      else
        format.html { render :new }
        format.json { render json: @rooftop.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @rooftop = Roof.new
  end

 private

 def rooftop_params
      params.require(:roof).permit(:name, :location, :price, :user_id,:photo,:photo_cache)
 end


  def set_rooftop
    @rooftop = Roof.find(params[:id])
  end
end
