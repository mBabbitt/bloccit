class SummaryController < ApplicationController
  def index
    @summaries = Summary.all
  end

  def show
    @post = Post.find(params[:post_id])
    @summary = @post.summary
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @summary = Summary.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @summary = Summary.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @summary = @post.build_summary(params.require(:summary).permit(:body))
    if @summary.save
      flash[:notice] = "Summary was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving your summary."
      render :new
    end
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @summary = Summary.find(params[:id])
    if @summary.update_attributes(params.require(:summary).permit(:body))
      flash[:notice] = "Summary was updated."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving your summary."
      render :edit
    end
  end
end