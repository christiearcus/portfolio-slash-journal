class PostsController < ApplicationController

def index
  if params[:search]
    @posts = Post.search(params[:search]).order('created_at DESC')
  else
    @posts = Post.all.order('created_at DESC')
  end
end

def new
  @post = Post.new
end

def create
   @post = Post.new
   @post.title = params[:post][:title]
   @post.body = params[:post][:body]
   if @post.save
    redirect_to(@post)
  else
    render 'new'
  end
end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  @post.title = params[:post][:title]
  @post.body = params[:post][:body]
  if @post.save
    redirect_to(@post)
  else
    render 'edit'
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end

end
