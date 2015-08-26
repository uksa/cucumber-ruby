Then(/^I will see a section for:$/) do |member_sections|
  member_sections.split("\n").each do |member_section|
    @member_details.text_on_page?(member_section).should == true
  end
end

Then(/^my Email will be displayed$/) do
  @member_details.get_user_email.should == @user[:username]
end

And(/^I'm on the Member Details section$/) do
  @header_container.open_member_details
end