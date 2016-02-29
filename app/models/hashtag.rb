class Hashtag < ActiveRecord::Base
	has_and_belongs_to_many :photos

	validates :name, :presence => true, :uniqueness => true

	#Description: search photos by tags
	def self.search_photos_by_tags(keywords)
		if keywords.empty?
			return Photo.order(:created_at => :desc)
		end

		photos = []
		keywords.each do |keyword|
			hashtag = self.find_by_name(keyword) 
			if hashtag
				photos.concat(hashtag.photos)
			end
		end

		return photos
	end
end
