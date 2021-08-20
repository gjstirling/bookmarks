require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'
require 'pg'


class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
 
  get "/create_bookmark" do
    erb(:create_bookmark)
  end

  post '/add_bookmark' do
    bookmark = Bookmark.new.save_bookmark(params[:url], params[:title])
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb :bookmark_bar
  end 
  
  run! if app_file == $0
end