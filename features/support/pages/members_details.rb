class MembersDetails < BasePage

  EMAIL = { css: 'tbody > tr:nth-child(1) >th:nth-child(2)'}

  def initialize(driver)
    super
    verify_page('Member Details')
  end

  def get_user_email
    driver.find_element(EMAIL).text
  end

end