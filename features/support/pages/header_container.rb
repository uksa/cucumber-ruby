class HeaderContainer < BasePage

  LOGIN   = { link: 'Sign In'}
  SIGN_UP = { link: 'Member Registration' }
  MENU    = { css:  '.dropdown-toggle'}

  def initialize(driver)
    super
    visit
  end

  def open_sign_in_page
    click_on(LOGIN)
    Login.new(driver)
  end

  def open_sign_up_page
    click_on(SIGN_UP)
    SignUp.new(driver)
  end

  def open_member_details
    # driver.find_elements(MENU).last.click
    # driver.find_element(:link_text, 'Member Details')
    visit("/member_details")
  end

end