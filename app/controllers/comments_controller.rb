class CommentsController < ApplicationController

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    @comment.name = params[:comment][:name]
    @comment.email = params[:comment][:email]
    @comment.body = params[:comment][:body]
    @comment.save
    redirect_to post_path(@post)
  end

  def show
  end

  # me only
  def destroy
    @post. Post.find(params[:post_id])
    @comment = @post.comments.find(params[:comment][:id])
    @comment.destory
    redirect_to post_path(@post)
  end

end
