require "test_helper"

feature "User can add a band name" do
  scenario "user adds a band name" do
    visit new_bandname_path
    fill_in "Name", with: "Oxygen Ponies"
    click_button "Create Bandname"
  end
end
