require 'rails_helper'

RSpec.feature "Repairs", type: :feature do
include Warden::Test::Helpers
# this feature allows you to create a login 
    def setup
     @user = FactoryBot.create(:user)
     login_as(@user, :scope => :user)
    end
# allows you to run your test
  it "should create repair", js: true do
    setup
    owner = FactoryBot.create(:owner, user_id: @user.id)
    visit '/repairs'
    save_screenshot('test1.png')
    click_on 'Create New Repair'
    save_screenshot("test2.png")
    expect(page).to have_content("Repair Center")
    fill_in "Repair Type", with: "Plumbing" 
    fill_in "Repair Notes", with: "Water coming down"
    click_on "Submit"
    repair = Repair.first
    expect(repair.repair_type).to eq("Plumbing")
  end
end

