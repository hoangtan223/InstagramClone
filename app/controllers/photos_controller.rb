# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string
#  caption    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
