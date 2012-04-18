class Exercise < ActiveRecord::Base
  has_many :operations, dependent: :destroy
  accepts_nested_attributes_for :operations, allow_destroy: :true
  
  attr_accessible :long_description, :no, :short_description, :operations_attributes
  validates :long_description, :no, :short_description, presence: true
  

end
