require "test_helper"

feature "the front page is relevant" do
  scenario "front page includes site title" do
    visit "/"
    page.text.must_include "The Worst Band Names Ever"
  end
end
