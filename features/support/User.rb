class User

  def self.standard_user
    {username: 'uksa.testing+standard@gmail.com', password: 'Password1'}
  end

  def self.suspended_user
    {username: 'uksa.testing+suspend@gmail.com', password: 'Password1'}
  end

  def self.admin_user
    {username: 'uksa.testing+admin@gmail.com', password: 'Password1'}
  end

  def self.unknown_username
    {username: 'kate@bob.com', password: 'xxx'}
  end

  def self.new_user
    {username: Faker::Internet.email, password: 'Password1', associate_member: Faker::Name.name}
  end

end