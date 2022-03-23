require 'rails_helper'

describe UserPolicy do
  subject { described_class }

  # permissions :update?, :edit? do
  #   it "denies access if post is published" do
  #     expect(subject).not_to permit(User.new(role_id: :admin), User.new(role_id: :admin))
  #   end
  #
  #   it "grants access if post is published and user is an admin" do
  #     expect(subject).to permit(User.new(admin: true), Post.new(published: true))
  #   end
  #
  #   it "grants access if post is unpublished" do
  #     expect(subject).to permit(User.new(admin: false), Post.new(published: false))
  #   end
  # end

  # permissions :destroy? do
  #   it "非super_admin 不允许操作" do
  #     expect(subject).not_to permit(User.new(role_id: :admin), User.new(role_id: :user))
  #   end

  #   it "super_admin 可删除用户" do
  #     super_user = FactoryBot.create(:user, role_id: :super_admin)
  #     user = FactoryBot.create(:user, role_id: :admin)
  #     expect(subject).to permit(super_user, user)
  #   end
  # end

end
