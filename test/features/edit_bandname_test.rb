require "test_helper"

feature "bandnames can be updated" do
  scenario "user tries to update a band name" do
    visit edit_bandname_path(bandnames(:one))
    fill_in "Name", with: bandnames(:two).name
    click_on "Update"
    page.text.must_include bandnames(:two).name
    page.text.wont_include bandnames(:one).name
  end
end
