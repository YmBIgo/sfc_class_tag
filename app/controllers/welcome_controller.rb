class WelcomeController < ApplicationController

  def index
    @comment = Comment.new
    @comments = Comment.all
  end

end
