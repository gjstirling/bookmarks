feature "form to save bookmark" do
  let(:book_url){ 'https://booking.com' }
  let(:title) { 'Click for holibobs' }

  scenario "the submit button exist and on submit page navigates to the bookmarks " do 
    visit('/create_bookmark')
    click_button('Create bookmark')
    expect(page).to have_current_path('/bookmarks')
  end

  scenario "Checking bookmark supplied appears in /bookmarks page" do 
    visit('/create_bookmark')
    fill_in("url", with: 'https://booking.com')
    fill_in("title", with: 'Click for holibobs')
    click_button('Create bookmark')
    expect(page).to have_content(title)
  end

end
