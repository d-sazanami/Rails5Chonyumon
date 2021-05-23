class BlogsController < ApplicationController
  layout 'blogs'

  def show
    @blogpost = Blogpost.find params[:id]
    @blogconfig = Blogconfig.find 1
  end
end
