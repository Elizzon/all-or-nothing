class CommentsController < ApplicationController
	before_action :authenticate_model!, except: [ :index, :show, ]

	# before_filter :authenticate_user!, except => [:create, :destroy]

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
		
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
		
	end

private

	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end

end
