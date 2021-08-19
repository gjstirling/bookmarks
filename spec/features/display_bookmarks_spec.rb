feature "Prints saved bookmarks" do 
  
  scenario "Outputs list of bookmarks" do 
    set_table
    visit "/bookmarks"
    expect(page).to have_content ("http://www.makersacademy.com http://www.google.com" )
  end 

  scenario "checks we navigate to the page create_bookmark" do
    visit('/bookmarks')
    click_link('Create bookmark')
    expect(page).to have_current_path('/create_bookmark')
  end

end 


