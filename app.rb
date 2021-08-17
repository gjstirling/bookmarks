require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'
require 'pg'


class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello, World!"
  end

  get '/bookmarks' do 
    @bookmark = Bookmark.all
    erb :bookmark_bar
  end 
  
  run! if app_file == $0
end