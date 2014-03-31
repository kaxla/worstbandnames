require "test_helper"

feature "destroying a bandname" do
  scenario "user wants to destroy an existing bandname" do
    visit bandname_path(bandnames(:one))
    click_on "Delete"
    page.text.wont_include bandnames(:one).name
  end
end
