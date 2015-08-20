When(/^I attempt to Sign into the application$/) do
  @header_container = HeaderContainer.new(@driver)
  @login = @header_container.open_sign_in_page
  @login.failed_login_user_data(@user)
end

When(/^I Sign into the application$/) do
  @header_container = HeaderContainer.new(@driver)
  @login = @header_container.open_sign_in_page
  @member_details = @login.login_user_data(@user)
end

Then(/^I will remain on the Sign in page$/) do
  @login.text_on_page?("Sign in").should == true
end


Then(/^I will see my Member Details$/) do
  @login.text_on_page?("Contracts").should == true
end

Given(/^I'm a Logged in Standard User$/) do
  @user = User.standard_user
  @header_container = HeaderContainer.new(@driver)
  @login = @header_container.open_sign_in_page
  @member_details = @login.login_user_data(@user)
end