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

  def save_bookmark(url, title)
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else 
      conn = PG.connect(dbname: 'bookmark_manager')
    end
    conn.exec ( "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;" )
  end
  
end 

