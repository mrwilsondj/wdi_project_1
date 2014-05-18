class Collector < ActiveRecord::Base

  # mixes in BCrypt modules, etc to existing model
  include BCrypt

  # validation for unique email
  # validates(:email, { :uniqueness => true})
  validates :email, uniqueness: true

  # allows me to say collector.vinyl_records
  # connect it to vinyl_records table THROUGH the join-table named "Collection"
  has_many :vinyl_records, through: :collections

    # setter
  def password= password_input
    # passes the password_input through BCrypt::Password and hashes it
    new_password_hash = Password.create(password_input)
    # new password hash written to database
    self.hashed_password = new_password_hash
    self.hashed_password
  end

  # getter
  def password
    Password.new(self.hashed_password)
  end

  # check's a password
  def check_password(password_input)
    # does the password going in, match the DB pass?
    password_input == self.password
  end

  #
  def self.authenticated?(email_input, password_input)
    # binding.pry
    user = Collector.find_by_email(email_input)
    if user && user.password == password_input
      puts "Authenticated!"
      return user
    else
      puts "Did not authenticate!"
      return nil
    end
    puts "Did not find email"
    return nil
  end

end
