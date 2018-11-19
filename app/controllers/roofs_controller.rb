class RoofsController < ApplicationController
  def index
    @roofs = Roof.all
  end

  private

  def set_roof
    @roof = Roof.find(params[:id])
  end
end
