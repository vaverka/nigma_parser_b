require 'sinatra'
require 'date'
require 'bootstrap'

get '/' do
  @post = href
  erb :index
end

post '/' do 
  url = params[:url]
  key = params[:key]
  get_nigma url, key
  erb :index
  # redirect to '/'
end

def get_nigma(url, key)
  nigma_link = "http://nigmaru.com/hl/highlight.php?url=#{url}&code=ba8ba8&s=#{key}"
end

def href
  href_link = ""
  href_link << "<a href=\"#{get_nigma}\">#{url} #{key}</a>"
  end



