require "test_helper"

feature "bandname show page" do
  scenario "user visits specific bandname page" do
    visit bandname_path(bandnames(:one).id)
    page.text.must_include bandnames(:one).name
  end
end
