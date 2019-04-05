class CommentsController < ApplicationController
	 def create
	    @post = Post.find(params[:post_id])	    	
	    @comment = @post.comments.create(comment_params)
	    #binding.pry
	    redirect_to post_path(@post)
  	end

  	def edit
  		@comment = Comment.find(params[:id])
  	end

  	def update
  		@comment = Comment.find(params[:id])
  		@comment.update_attributes(comment_params)
  		redirect_to post_path(@comment.post)
  	end

  	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
