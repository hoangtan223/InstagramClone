class HomeController < ApplicationController
  def index
  	@photos = Photo.order(:created_at => :desc)
  end
end
