#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
 
require 'sinatra'
require 'slim'
 
helpers do
  def nigma_url(url, key)
    "http://nigmaru.com/hl/highlight.php?url=#{url}&code=ba8ba8&s=#{key}"
  end
end
 
get '/' do
  slim :index
end
 
post '/' do
  @nigma_url = nigma_url params[:url], params[:key]
  slim :index
end
 
__END__
 
@@layout
doctype html
html
  head
    title Nigma Parser
  body == yield
 
 
@@index
- if @nigma_url
  p: a href=@nigma_url = @nigma_url
 
form action="/" method="post"
  label Ссылка на страницу
  input type="text" name="url" required=true
  br
  label Ключевое слово
  input type="text" name="key" required=true
  br
  input type="submit"