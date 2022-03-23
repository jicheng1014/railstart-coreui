require 'rails_helper'

RSpec.describe Api::V1::Mine::AccountsController, type: :controller do

  describe "update " do
     before(:each) do
      @account = FactoryBot.create(:account)      
      auth_headers = { 'token' =>  @account.auth_token }
      request.headers.merge! auth_headers      
    end

    it 'can update' do
      params = {
        account: { profile_attributes: { label_list: 'xx'}}
      }

      post :update_info, params: params      
    end
  end
end