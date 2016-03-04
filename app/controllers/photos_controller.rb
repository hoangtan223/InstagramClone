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

	def index
		@keywords = tag_params
		@photos = Photo.search_by_tags(@keywords)
	end

	def show
		@photos = Array.new
		@photos << Photo.find(params[:id])
	end

	private
	def photo_params
		params.require(:photo).permit(:image, :caption, :user_id)
	end

	def tag_params
		params[:hashtag].split(" ")
	end
end
