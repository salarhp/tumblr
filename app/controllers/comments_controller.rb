class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name,:body))

    redirect_to post_path(@post)
  end

  def update
  end

  def destroy
  end
end
