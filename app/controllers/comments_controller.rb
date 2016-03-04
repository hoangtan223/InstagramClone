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

class CommentsController < ApplicationController
	def create
		@comment = Comment.create(comment_params)

		# respond_to do |format|
		# 	if @comment.save
		# 		format.html 
		# 		format.json {render @comment, status: :created }
		# 	else
		# 		format.json {render @comment.errors, status: :unprocessable_entity }
		# 	end
		# end
		respond_to do |format|
			format.json do
				render :json => { :success => @comment.valid? , :comment => @comment.comment, :user_id => @comment.user_id, :username => @comment.user.username }
			end
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy

		respond_to do |format|
			format.html { redirect_to photos_url}
			format.json { head :no_content }
			format.js   { render :layout => false }
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:user_id, :photo_id, :comment)
	end
end
