class Exercise < ActiveRecord::Base
  has_many :operations
  attr_accessible :long_description, :no, :short_description
  validates :long_description, :no, :short_description, presence: true
  accepts_nested_attributes_for :operations, allow_destroy: :true

end
