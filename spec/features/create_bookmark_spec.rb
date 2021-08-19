feature "form to save bookmartk" do
  let(:book_url){ 'https://booking.com' }

  scenario "the submit button exist and on submit page navigayes to the bookmarks " do 
    visit('/create_bookmark')
    click_button('Create bookmark')
    expect(page).to have_current_path('/bookmarks')
  end

#   scenario "the submit button exist and on submit page navigayes to the bookmarks " do 
#     visit('/create_bookmark')
#     fill_in("url", with: book_url)
#     click_button('Create bookmark')
#     expect(page).to have_current_path('/bookmarks')
#     expect(page).to have_content(book_url)
#   end

end
