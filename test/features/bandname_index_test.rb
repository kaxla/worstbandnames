require "test_helper"

feature "there is a bandname index" do
  scenario "user visits bandname index" do
    visit bandnames_path
    page.text.must_include bandnames(:one).name
  end
end
