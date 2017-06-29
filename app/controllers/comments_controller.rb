class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if comment.save
      flash[:notice] = "登録しました"
      head 201
    else
      render json: { messages: comment.errors.full_messages }, status: 422
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:href, :content, :x_pos, :y_pos, :category)
  end

end
