require 'rails_helper'

describe '登录功能', type: :feature do
  # let(:user) { create(:user) }

  # before { visit sign_in_path }

  # it { expect(page).to have_selector('h4', text: '登录') }

  # it '没有填任何信息就点登录' do
  #   click_button '登陆'
  #   expect(page).to have_content('邮箱或密码输入不正确')
  # end

  # it '输入邮箱成功登录' do
  #   within('.simple_form.session') do
  #     fill_in 'session[email]', with: user.email
  #     fill_in 'session[password]', with: user.password
  #   end
  #   click_button '登陆'
  #   # expect(page).to have_content '登录成功'
  #   expect(page).to have_current_path(root_path)
  # end



  # it '密码错误的失败登录' do
  #   within('.simple_form.session') do
  #     fill_in 'session[email]', with: user.email
  #     fill_in 'session[password]', with: 'wrong_password'
  #   end
  #   click_button '登陆'
  #   expect(page).to have_content '邮箱或密码输入不正确'
  #   expect(page).to have_current_path(session_path)
  # end

end