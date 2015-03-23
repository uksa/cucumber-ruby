When(/^I attempt to Sign in$/) do
  @login = Login.new(@driver)
  @login.failed_login_user_data(@user)
end

Then(/^my Sign In attempt will be rejected$/) do
  @login.assert_login_page("Member Details").should_not == true
end