class Photo < ActiveRecord::Base
	belongs_to :user

	#validate
	validates :image, presence: true
end
