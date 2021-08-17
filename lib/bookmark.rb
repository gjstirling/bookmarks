require 'pg'
class Bookmark

  def self.all
    arr = [] 
    conn = PG.connect(dbname: 'bookmark_manager')
    conn.exec ( "SELECT url FROM bookmarks" ) do |result|
      result.each do |row|  
        arr << row["url"] 
      end 
    p arr
    end
  end
  
end 

