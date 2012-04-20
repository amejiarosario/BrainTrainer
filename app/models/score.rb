class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  attr_accessible :attempts, :correctness
end
