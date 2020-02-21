class CommentsController < ApplicationController
  before_action :set_item
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
  def index

    @comments = @item.comments
  end

  def new
    @comment = @item.comments.new
    render partial: 'form'
  end
  def create 
    @comment = @item.comments.new(comment_params)
    if @comment.save
      redirect_to item_comment_path(@item,@comment)
    else
      render :new
    end
  end 
  def show
  end

  def edit
    render partial: "form"
  end
  def update
    if @comment.update(comment_params)
      redirect_to [@item, @comment]
    else
      render :edit
    end 
  end 

  def destroy
    @comment.destroy
    redirect_to item_comments_path(@item)
  end 
  
  private 
  def set_item
    @item = Item.find(params[:item_id])
  end 
  private
  def comment_params
    params.require(:comment).permit(:subject, :review,:rating)
  end
  private
  def set_comment
    @comment = Comment.find(params[:id])
  end
 
end
