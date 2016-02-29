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

	private
	def comment_params
		params.require(:comment).permit(:user_id, :photo_id, :comment)
	end
end
