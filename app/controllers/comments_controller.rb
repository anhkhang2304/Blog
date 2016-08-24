class CommentsController < ApplicationController

  def create
    @comment = Comment.new comment_params
    if @comment.save
    respond_to do |format|
      format.html { redirect_to @comment }
      format.js
    end
  end

  def destroy
    
  end
  end

  private
    def comment_params
      params.require(:comment).permit :content
    end
    
end
