class AjaxController < ApplicationController
  layout 'ajax'

  def index
  end

  def data
    @ajax_data = Person.find 1
  end

end
