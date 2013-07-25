require 'sinatra'
require 'date'
require 'bootstrap'

get '/' do
  @post = get_nigma.to_s
  erb :index
end

post '/' do 
  url = params[:url]
  key = params[:key]
    if url != nil && url.empty? != true && 
      key != nil && key.empty? != true
    end
  get_nigma url, key
  erb :index
  # redirect to '/'
end

def get_nigma url, key
  href_link = ""
  nigma_link = "http://nigmaru.com/hl/highlight.php?url=#{url}&code=ba8ba8&s=#{key}"
  href_link << "<a href=\"#{nigma_link}\">#{key}</a>"
  href_link
end


