# -*- coding: utf-8 -*-

require 'sinatra'
require 'date'
require 'bootstrap'
require 'debugger'

get '/' do
  erb :index
end

post '/' do
  @url = params[:url]
  @key = params[:key]
  @nigma_link = get_nigma
  @post = href
  erb :index
  # redirect to '/'
end

def get_nigma
  nigma_link = "http://nigmaru.com/hl/highlight.php?url=#{@url}&code=ba8ba8&s=#{@key}"
end

def href
  get_nigma
  link = get_nigma
  href_link = ""
  href_link << "<a href=\"#{link}\" target=\"_blank\">#{@url}, #{@key}</a>"
  href_link
  end