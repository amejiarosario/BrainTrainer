class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  attr_accessible :rating, :time
  # TODO remove attempts. the number of attempts are implicity gotten with @user.scores.count
end
