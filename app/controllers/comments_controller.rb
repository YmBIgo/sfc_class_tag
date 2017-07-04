class CommentsController < ApplicationController
  before_action :authenticate_user!
  def show
    @comment = Comment.find(params[:id])
    @henshins = Henshin.where(:comment_id => @comment.id)
    @new_henshin = Henshin.new
  end
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
    params.require(:comment).permit(:href, :content, :x_pos, :y_pos, :category, :page_name).merge(:user_id => current_user.id)
  end

end
