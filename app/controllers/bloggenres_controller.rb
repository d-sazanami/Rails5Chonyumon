class BloggenresController < ApplicationController
  layout 'bloggenres'

  def index
    @data = Bloggenre.all
  end


end
