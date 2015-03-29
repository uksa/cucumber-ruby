class HeaderContainer < BasePage

  LOGIN = { link: 'Sign In'}

  def initialize(driver)
    super
    visit
  end

  def open_sign_in_page
    click_on(LOGIN)
    Login.new(driver)
  end

end