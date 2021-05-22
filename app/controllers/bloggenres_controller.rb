class BloggenresController < ApplicationController
  layout 'bloggenres'

  def index
    @data = Bloggenre.all
  end

  def add
    @bloggenre = Bloggenre.new
    if request.post? then
      @bloggenre = Bloggenre.create bloggenre_params
      redirect_to '/bloggenres'
    end
  end


  private
  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end

end
