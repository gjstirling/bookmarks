require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      set_table
      #connection PG.connect(dbname: "bookmark_manager_test")
      bookmark = Bookmark.create(url: "http://www.google.com/", title: "Google")
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 3
      expect(bookmarks.last).to be_a Bookmark
      expect(bookmarks.last.id).to eq bookmark.id
      expect(bookmarks.last.title).to eq 'Google'
      expect(bookmarks.last.url).to eq 'http://www.google.com/'
    end
    
  end

  describe 'save_bookmark' do 
    it "Saves a given url in bookmarks bar" do 
      bookmark = Bookmark.new
      bookmark.create("http://www.facebook.com", "FB")
      expect(Bookmark.all).to include("http://www.facebook.com", "FB")  
    end 
  end 

end