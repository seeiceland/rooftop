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

end
