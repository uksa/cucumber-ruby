class User

  def self.standard_user
    {username: 'standard@uksa.eu', password: 'Password1'}
  end

  def self.suspended_user
    {username: 'standard@uksa.eu', password: 'Password1'}
  end

  def self.admin_user
    {username: 'standard@uksa.eu', password: 'Password1'}
  end

  def self.unknown_username
    {username: 'kate@bob.com', password: 'xxx'}
  end

  def self.new_user
    {username: Faker::Internet.email, password: 'Password1', associate_member: Faker::Name.name}
  end

end