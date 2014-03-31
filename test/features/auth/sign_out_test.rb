require "test_helper"

feature "Users can sign out" do
  scenario "user wants to sign out" do
    visit "/"
    click_on "Sign in"
    fill_in "Email", with: users(:user).email
    fill_in "Password", with: "password"
    click_button "Sign in"
    click_on "Sign Out"
    page.text.must_include "Signed out successfully"
  end
end
