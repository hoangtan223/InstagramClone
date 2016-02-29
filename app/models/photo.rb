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

class Photo < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_and_belongs_to_many :hashtags
	#validate
	validates :image, presence: true

	before_save :generate_tags

	#Description: generate tag entities if the caption contains any
	def generate_tags
		tags = Twitter::Extractor.extract_hashtags(caption)
		tags.each do |tag|
			hashtag = Hashtag.find_by_name(tag)
			if hashtag
				hashtags << hashtag
			else
				hashtags.build(:name => tag)
			end
		end
	end
end
