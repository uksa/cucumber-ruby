When(/^I attempt to Sign in$/) do
  @login = Login.new(@driver)
  @login.login_user_data(@user)
end