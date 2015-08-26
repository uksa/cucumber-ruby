class MembersDetails < BasePage

  PAGE_URL = "member_details"

  EMAIL = { css: 'tbody > tr:nth-child(1) >th:nth-child(2)'}


  def initialize(driver)
    super
    verify_page('Members Home')
  end

  def get_user_email
    driver.find_element(EMAIL).text
  end

end