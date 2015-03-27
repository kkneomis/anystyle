class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :vote]
  before_filter :check_user, only: [:edit, :update, :destroy]
  respond_to :html

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to @comment.style
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id, :style_id)
    end
  def check_user
    if current_user != @comment.user
      redirect_to root_url, alert: "Sorry, this Comment belongs to someone else"\
      end
  end
end
