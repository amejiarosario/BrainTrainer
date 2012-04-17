class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  validates :email, :name, :password, presence: true
end
