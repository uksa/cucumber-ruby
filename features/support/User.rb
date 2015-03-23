class User

  def self.standard_user
    {username: 'samtreweek@yahoo.co.uk', password: 'Password1'}
  end

  def self.suspended_user
    {username: 'samtreweek@hotmail.com', password: 'Password1'}
  end

  def self.admin_user
    {username: 'samtreweek@gmail.com', password: 'Password1'}
  end

  def self.unknown_username
    {username: 'sam@sam.com', password: 'xxx'}
  end

end