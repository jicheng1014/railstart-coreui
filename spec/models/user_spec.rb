# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  username            :string
#  phone               :string
#  email               :string
#  position            :integer
#  status              :string
#  role_id             :string
#  avatar              :string
#  deleted_at          :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  encrypted_password  :string(128)
#  confirmation_token  :string(128)
#  remember_token      :string(128)
#  uuid                :string
#  account_number_list :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user role' do
    it 'normal user' do
      user = FactoryBot.create(:user)
      expect(User.count).to eq 1
    end
  end
end
