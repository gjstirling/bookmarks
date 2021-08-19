def set_table
  conn = PG.connect dbname:"bookmark_manager_test"
  conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');") 
  conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');") 
end 