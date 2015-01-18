class PostsController < ApplicationController
     respond_to :html, :xml, :json
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @post = Post.new
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    flash[:notice] = 'Post was successfully created.' if @post.save
    respond_with(@post)
  end

  def update
    flash[:notice] = 'Post was successfully updated.' if @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:user_id, :content, :image)
    end
end
