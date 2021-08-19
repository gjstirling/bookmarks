require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      set_table
      bookmarks = Bookmark.all
      expect(bookmarks).to contain_exactly("http://www.makersacademy.com", "http://www.google.com")
    end
    
  end

  describe 'save_bookmark' do 
    it "Saves a given url in bookmarks bar" do 
      bookmark = Bookmark.new
      bookmark.save_bookmark("http://www.facebook.com")
      expect(Bookmark.all).to include("http://www.facebook.com")  
    end 
  end 

end