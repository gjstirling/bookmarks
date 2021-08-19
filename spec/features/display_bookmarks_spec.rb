feature "Prints saved bookmarks" do 
  
  scenario "Outputs list of bookmarks" do 
    set_table
    visit "/bookmarks"
    expect(page).to have_content ("http://www.makersacademy.com http://www.google.com" )
  end 
end 


