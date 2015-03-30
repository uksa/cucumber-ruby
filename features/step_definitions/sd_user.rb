Given(/^I'm a Admin User$/) do
  @user = User.admin_user
end

Given(/^I'm a Unknown User$/) do
  @user = User.unknown_username
end

Given(/^I'm a Standard User$/) do
  @user = User.standard_user
end

Given(/^I'm a Suspended User$/) do
  @user = User.suspended_user
end

Given(/^I'm a new User$/) do
  @user = User.new_user
end