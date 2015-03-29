When(/^I attempt to Sign into the application$/) do
  @header_container = HeaderContainer.new(@driver)
  @login = @header_container.open_sign_in_page
  @login.failed_login_user_data(@user)
end

When(/^I Sign into the application$/) do
  @header_container = HeaderContainer.new(@driver)
  @login = @header_container.open_sign_in_page
  @login.login_user_data(@user)
end

Then(/^I will remain on the Sign in page$/) do
  @login.assert_page("Sign in").should == true
end


Then(/^I will see my Member Details$/) do
  @login.assert_page("Member Details").should == true
end