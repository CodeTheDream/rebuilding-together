require 'rails_helper'

RSpec.feature "Repairs", type: :feature do
include Warden::Test::Helpers
# this feature allows you to create a login 
    def setup
     @user1 = FactoryBot.create(:user1)
     login_as(@user1, :scope => :user)
    end


it "should sign up as a user", js: true do
    visit '/users/sign_up'
    save_screenshot('flag1.png')
    fill_in "Email", with: "v100@oal.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    save_screenshot("flag2.png")
    click_on "Log in" 
    sleep 1
    save_screenshot("flag3.png")
    expect(page).to have_content("Sign up")
    end



 it "should create a volunteer", js: true do 
     setup
     volunteer = FactoryBot.create(:volunteer, user_id: @user1.id)
     visit '/volunteers/new'
     volunteer = Volunteer.first
     save_screenshot("volunteer1.png")
     expect(page).to have_content("My Profile")
     end
end



