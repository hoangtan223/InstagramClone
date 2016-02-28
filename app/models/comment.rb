class Comment < ActiveRecord::Base
	#associate
	belongs_to :user
	belongs_to :photo

	#validate
	validates :comment, :user_id, :photo_id, presence: true
end
