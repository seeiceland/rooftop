class RoofsController < ApplicationController
  before_action :set_rooftop, only: [:show, :edit, :update, :destroy]

def index
  @rooftops = Roof.all
end

def show

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
end

def destroy
@rooftop.destroy
    respond_to do |format|
      format.html { redirect_to rooftops_url, notice: 'Rooftop was successfully destroyed.' }
      format.json { head :no_content }
end

def create
@rooftop = Roof.new(rooftop_params)

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
def set_rooftop
   @rooftop = Roof.find(params[:id])
end

 def rooftop_params
      params.require(:rooftop).permit(:name, :location, :price, :user_id)
    end

  layout "application"
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
