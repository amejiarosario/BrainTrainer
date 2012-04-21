class User < ActiveRecord::Base
  attr_accessor :password
  attr_protected :password_encrypted
  
  validates :email, :name, :password, presence: true
  validates :email, uniqueness: true, email: true
  validates :password, confirmation: true
  
  has_many :scores, dependent: :destroy
  has_many :exercises, through: :scores
  
  accepts_nested_attributes_for :scores, allow_destroy: :true
  
  # automatically encrypt the password and generate a salt when a password is entered
  def password=(pass)
    return if pass.blank?
    @password = pass
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_encrypted = BCrypt::Engine.hash_secret(pass, password_salt)
  end
  
  # Return the user that corresponds to that email and pass.
  def self.authenticate(email, pass)
    user = find_by_email(email)
    user if user and user.password_encrypted == BCrypt::Engine.hash_secret(pass, password_salt)
  end
  
end
