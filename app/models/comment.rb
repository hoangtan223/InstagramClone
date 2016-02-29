# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :string
#  user_id    :integer
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
	#associate
	belongs_to :user
	belongs_to :photo

	#validate
	validates :comment, :user_id, :photo_id, presence: true
end
