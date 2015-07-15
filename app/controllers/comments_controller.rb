class CommentsController < ApplicationController
  

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    authorize @comment
    if @comment.save
      flash[:notice] = "Comment was saved"
      redirect_to  [@post.topic, @post]
    else
      flash[:error] = "There was an error saving a comment. Please try again"  
      redirect_to [@post.topic, @post]

    end
  end


  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was deleted"
    else
      flash[:error] = "There was an error deleting a comment. please try again"  
    end  

    respond_to do |format|
      format.html
      format.js
    end  

  end  
  
  private 

  def comment_params
    params.require(:comment).permit(:body)
  end   

end