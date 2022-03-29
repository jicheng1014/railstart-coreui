# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'index ' do
    before(:each) do
      auth_headers = { 'token' => '' }
      request.headers.merge! auth_headers
    end

    it 'index' do
      params = {

      }

      get :index, params: params
    end
  end
end
