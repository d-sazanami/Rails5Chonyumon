require 'net/http'
require 'uri'

class AjaxController < ApplicationController
  layout 'ajax'

  def index
  end

  def data
    url = URI('https://news.yahoo.co.jp/rss/topics/top-picks.xml')
    http = Net::HTTP.new(url.host)
    response = http.get(url)
    @data = Hash.from_xml(response.body).to_json.html_safe
  end

end
