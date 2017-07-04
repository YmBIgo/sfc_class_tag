class PagesController < ApplicationController

  def show
    @comments = Comment.where(:page_name => "#{params[:page]}")
    render template: "sfc_pages/#{params[:page]}"
  end

  def edit
    @comment = Comment.new
    render template: "sfc_pages/#{params[:page]}_edit"
  end

end
