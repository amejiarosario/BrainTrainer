class User < ActiveRecord::Base
  attr_accessor :password
  attr_protected :password_encrypted
  
  validates :email, :name, :password, presence: true
  validates :email, uniqueness: true, email: true
  #validates :password, confirmation: true
  
  has_many :scores, dependent: :destroy
  has_many :exercises, through: :scores
  
  accepts_nested_attributes_for :scores, allow_destroy: :true
  
  def password=(pass)
    return if pass.blank?
    @password = pass
    self.password_encrypted = BCrypt::Password.create(pass)
  end
  
end
