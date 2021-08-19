require 'bookmark'

describe Bookmark do

  describe '.all' do

    it 'returns all bookmarks' do
      set_table
      bookmarks = Bookmark.all
      expect(bookmarks).to contain_exactly("http://www.makersacademy.com", "http://www.google.com")
    end
    
  end

end