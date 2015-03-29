class Login < BasePage

  LOGIN_USERNAME  = { css: '#user_email' }
  LOGIN_PASSWORD  = { css: '#user_password' }
  LOGIN_BUTTON    = { name: 'commit' }

  def initialize(driver)
    super
    verify_page('Sign in')
  end

  def login_user_data(user_data)
    enter_user_data(user_data)
    select_login
    MembersDetails.new
  end

  def failed_login_user_data(user_data)
    enter_user_data(user_data)
    select_login
    self
  end

  def enter_user_data(user_data)
    type(LOGIN_USERNAME, user_data[:username])
    type(LOGIN_PASSWORD, user_data[:password])
  end

  def login_user(username, password)
    type(LOGIN_USERNAME, username)
    type(LOGIN_PASSWORD, password)
  end

  def select_login
    click_on(LOGIN_BUTTON)
  end

end
