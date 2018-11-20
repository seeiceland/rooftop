class PagesController < ApplicationController
  layout "landing"
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
  end

  def search
  end
end
