class BlogconfigsController < ApplicationController
  layout 'blogconfigs'

  def index
    @blogconfig = Blogconfig.find 1
  end


end
