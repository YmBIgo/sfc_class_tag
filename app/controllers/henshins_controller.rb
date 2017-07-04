class HenshinsController < ApplicationController
  before_action :authenticate_user!
  def create
    @henshin = Henshin.create(henshin_params)
    redirect_to :back
  end
  private
  def henshin_params
    params.require(:henshin).permit(:content, :comment_id).merge(:user_id => current_user.id)
  end
end
