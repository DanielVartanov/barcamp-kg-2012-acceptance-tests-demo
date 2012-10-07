#encoding: utf-8
class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :build_post, only: [:new, :create]
  before_filter :find_posts, only: :index

  def index
  end

  def new

  end

  def create
    if @post.save
      redirect_to posts_path, notice: "Пост создан"
    else
      render 'new'
    end
  end

  protected

  def build_post
    @post = current_user.posts.new params[:post]
  end

  def find_posts
    @posts = Post.all
  end

end