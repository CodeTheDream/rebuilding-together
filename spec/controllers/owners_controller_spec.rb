# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OwnersController, type: :controller do
   include Devise::Test::ControllerHelpers
   def setup
   @request.env["devise.mapping"] = Devise.mappings[:user]
   sign_in FactoryBot.create(:user)
 end
  describe 'GET #index' do
    before :each do
     setup
   end
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
