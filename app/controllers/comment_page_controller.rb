class CommentPageController < ApplicationController
  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to comment_page_index_path
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to comment_page_index_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comment_page_index_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end
