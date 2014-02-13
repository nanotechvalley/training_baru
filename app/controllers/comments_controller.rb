class CommentsController < ApplicationController
	def destroy
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "Your comment has been successfully saved"
		else
			flash[:error] = "Failed to save your comment"
		end
		redirect_to article_path(@comment.article_id)

	end

	private
	def comment_params
		params.require(:comment).permit(:content, :article_id, :user_id)
	end
end
