require "test_helper"

feature "user can sign in" do
  scenario "user tries to sign in" do
    visit "/"
    click_on "Sign in"
    fill_in "Email", with: users(:user).email
    fill_in "Password", with: "password"
    click_button "Sign in"
    page.text.must_include "Signed in successfully"

  end
end
