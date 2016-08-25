class CommentsController < ApplicationController

  def create
    @comment = Comment.new comment_params
    if @comment.save
      #respond_to do |format|
        #format.html { redirect_to @comment }
        #format.js
        redirect_to root_url
      #end
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
  end


  private
    def comment_params
      params.require(:comment).permit :content, :micropost_id, :user_id
    end

end
