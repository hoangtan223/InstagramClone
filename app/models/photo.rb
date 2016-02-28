class Photo < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	#validate
	validates :image, presence: true
end
