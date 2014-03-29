require "test_helper"

feature "User can add a band name" do
  scenario "user adds a band name" do
    visit bandname_path
    fill_in "Band Name", with: "Oxygen Ponies"
    click_button "Submit"
  end
end
