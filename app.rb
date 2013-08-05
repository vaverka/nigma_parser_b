require 'sinatra'
require 'date'
require 'bootstrap'
require 'debugger'

get '/' do
  @post = href
  erb :index
end

post '/' do 
  @url = params[:url_1]
  @key = params[:key]
  @nigma_link = get_nigma(url_1, key)
  erb :index
  # redirect to '/'
end

def get_nigma(url_1, key)
  nigma_link = "http://nigmaru.com/hl/highlight.php?url=#{url_1}&code=ba8ba8&s=#{key}"
  nigma_link
end

def href
  href_link = ""
  href_link << "<a href=\"#{@nigma_link}\">#{@url_1} #{@key}</a>"
  end



