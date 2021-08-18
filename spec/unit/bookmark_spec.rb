require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      conn = PG.connect dbname:"bookmark_manager_test"
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');") 
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');") 
      bookmarks = Bookmark.all
      expect(bookmarks).to contain_exactly("http://www.makersacademy.com", "http://www.google.com")
    end
    
  end

end