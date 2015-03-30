When(/^I'm on the Member Registration page$/) do
  @header_container = HeaderContainer.new(@driver)
  @sign_up = @header_container.open_sign_up_page
end

Then(/^I will be able to Sign Up to the UKSA$/) do
  @sign_up.get_sign_up_text.should == "UKSA is completely free to sign up."
end

When(/^I Sign Up to the UKSA$/) do
  @member_details = @sign_up.user(@user)
end

When(/^I do not provide the Member Associate$/) do
  @sign_up.no_member_provided(@user)
end

Then(/^I my Sign Up will be rejected$/) do
  @sign_up.text_on_page?('Existing member can\'t be blank').should == true
end