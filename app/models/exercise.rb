class Exercise < ActiveRecord::Base
  belongs_to :operation
  attr_accessible :long_description, :no, :short_description
end
