#encoding: utf-8
class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :build_post, only: [:new, :create]
  before_filter :find_posts, only: :index

  def index
  end

  def new
    render :layout => 'window'
  end

  def create
    if @post.save
      respond_to do |format|
        format.html do
          redirect_to :posts, notice: "Запись создана!"
        end
        format.json { render :json => @order, status: 201, location: order_url(@order) }
      end
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
