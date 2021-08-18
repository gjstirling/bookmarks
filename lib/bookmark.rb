require 'pg'
class Bookmark

  def self.all
    arr = [] 
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else 
      conn = PG.connect(dbname: 'bookmark_manager')
    end 
    conn.exec ( "SELECT url FROM bookmarks" ) do |result|
      result.each do |row|  
        arr << row["url"] 
      end 
    arr
    end
  end
  
end 

