feature "Prints saved bookmarks" do 
  scenario "Outputs list of bookmarks" do 
    conn = PG.connect dbname:"bookmark_manager_test"
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');") 
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');") 
    visit "/bookmarks"
    expect(page).to have_content ("http://www.makersacademy.com http://www.google.com" )
  end 
end 


