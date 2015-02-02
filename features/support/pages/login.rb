class Login < Base

  LOGIN           = { link: 'Sign In'}
  LOGIN_USERNAME  = { css: '#user_email' }
  LOGIN_PASSWORD  = { css: '#user_password' }
  LOGIN_BUTTON    = { name: 'commit' }

  def initialize(driver)
    super
    visit
  end

  def login
    click_on(LOGIN)
    verify_page('Login')
  end

  def login_user_data(user_data)
    login
    enter_user_data(user_data)
    select_login
  end

  def enter_user_data(user_data)
    type_last(LOGIN_USERNAME, user_data[:username])
    type_last(LOGIN_PASSWORD, user_data[:password])
  end

  def login_user(username, password)
    type_last(LOGIN_USERNAME, username)
    type_last(LOGIN_PASSWORD, password)
  end

  def select_login
    click_on(LOGIN_BUTTON)
  end

  def goto(page)
    visit(page)
  end

end
