def set_table
  conn = PG.connect dbname:"bookmark_manager_test"
  Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy') 
  Bookmark.create(url: 'http://www.facebook.com/', title: 'FB') 
end 