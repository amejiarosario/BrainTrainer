class Operation < ActiveRecord::Base
  belongs_to :exercise
  attr_accessible :align, :numbers, :operator
  validates :align, :numbers, :operator, presence: true
end
