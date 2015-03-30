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

  def self.new_user
    {username: Faker::Internet.email, password: 'Password1', associate_member: Faker::Name.name}
  end

end