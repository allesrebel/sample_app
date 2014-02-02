class User < ActiveRecord::Base
  before_save {self.email = email.downcase};

  #checks if the field is null, and checks if the length is less than 50
  validates :name, presence: true, length: {maximum: 50}
  
  #mask for email stuff (checks if syntax is right)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  #Checks if the field is null, checks against the format, and checks if there is only one
  validates :email, presence:   true, 
                    format:     {with: VALID_EMAIL_REGEX}, 
                    uniqueness: {case_senstive: false}
  #auto checks for presence of password and much more
  has_secure_password

  #check if the password is there and has a minimum length
  validates :password, length: { minimum: 6}
end
