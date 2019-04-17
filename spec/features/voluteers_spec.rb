require 'rails_helper'

RSpec.feature "Repairs", type: :feature do
include Warden::Test::Helpers
# this feature allows you to create a login 
    def setup
     @user = FactoryBot.create(:user)
     login_as(@user, :scope => :user)
    end
end
