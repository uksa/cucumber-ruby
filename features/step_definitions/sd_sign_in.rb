When(/^I attempt to Sign into the application$/) do
  @login = Login.new(@driver)
  @login.failed_login_user_data(@user)
end

When(/^I Sign into the application$/) do
  @login = Login.new(@driver)
  @login.login_user_data(@user)
end

Then(/^I will still be on the Sign in page$/) do
  @login.assert_page("Sign in").should == true
end


Then(/^I will see my Member Details$/) do
  @login.assert_page("Member Details").should == true
end