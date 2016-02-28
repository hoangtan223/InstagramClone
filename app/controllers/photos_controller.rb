class PhotosController < ApplicationController
  def create
  	@photo = Photo.create(photo_params)
  	redirect_to current_user
  end

  private
  def photo_params
      params.require(:photo).permit(:image, :caption, :user_id)
    end
end
