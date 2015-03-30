class SignUp < BasePage

  SIGN_UP_TEXT          = { css: '#sign_up_text' }
  EMAIL                 = { css: '#user_email' }
  PASSWORD              = { css: '#user_password' }
  PASSWORD_CONFIRMATION = { css: '#user_password_confirmation' }
  MEMBER_ASSOCIATE      = { css: '#user_existing_member' }
  SIGN_UP_BUTTON        = { name: 'commit' }

  def initialize(driver)
    super
    verify_page('Sign up')
  end

  def get_sign_up_text
    driver.find_element(SIGN_UP_TEXT).text
  end

  def enter_username(username)
    type(EMAIL, username)
  end

  def enter_password(password)
    type(PASSWORD, password)
  end

  def enter_password_confirmation(password)
    type(PASSWORD_CONFIRMATION, password)
  end

  def enter_member_associate(associate_name)
    type(MEMBER_ASSOCIATE, associate_name)
  end

  def enter_user_details(user_details)
    enter_username(user_details[:username])
    enter_password(user_details[:password])
    enter_password_confirmation(user_details[:password])
    enter_member_associate(user_details[:associate_member])
  end

  def select_sign_up
    click_on(SIGN_UP_BUTTON)
  end

  def user(user_details)
    enter_user_details(user_details)
    select_sign_up
    MembersDetails.new(driver)
  end

  def no_member_provided(user_details)
    enter_username(user_details[:username])
    enter_password(user_details[:password])
    enter_password_confirmation(user_details[:password])
    select_sign_up
  end


end