class HashtagsController < ApplicationController
  def show

  end

  def searchtag
  	@keywords = tag_params
  	@photos = Hashtag.search_photos_by_tags(@keywords)
  end


  def tag_params
      params[:name].split(" ")
    end
end
