require "test_helper"

feature "User can add a band name" do
  scenario "user adds a band name through /new" do
    sign_in(:user)
    visit new_bandname_path
    fill_in "Name", with: "Oxygen Ponies"
    click_button "Create Bandname"
  end

  scenario "user can see add bandname link on index" do
    sign_in(:user)
    visit root_path
    page.text.must_include "Submit Bandname"
  end

  scenario "unsigned in can't add a band name through /new" do
    visit new_bandname_path
    page.text.must_include "You are not authorized to access this page."
  end

  scenario "unsigned in can't see add bandname link on index" do
    visit root_path
    page.text.wont_include "Submit Bandname"
  end
end
