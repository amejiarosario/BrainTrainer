class Exercise < ActiveRecord::Base
  has_many :operations, dependent: :destroy, autosave: true
  has_many :scores, dependent: :destroy, autosave: true
  has_many :users, through: :scores
  
  accepts_nested_attributes_for :operations, allow_destroy: :true, reject_if: lambda {|a| a[:numbers].blank? }
  
  attr_accessible :long_description, :no, :short_description, :operations_attributes
  
  validates :long_description, :no, :short_description, presence: true
  validates :no, uniqueness: true
  
  def answers
    @answers ||= self.operations.inject([]){|s,e| s << e.answer}
  end
  
  #
  def check_answers(user_answers)
    user_answers == answers
  end
  
  # get total of correct answers in percentage
  def rate(user_answers)
    rate = 0
    logger.debug "*-----------------*"
    logger.debug answers.inspect
    logger.debug "*-----------------*"
    answers.each.with_index do |a,i|
        rate += 1 if a == user_answers[i]
    end
    logger.debug "rate=" + rate.to_s + "; ans.size=" + answers.size.to_s
    logger.debug (100 * rate / answers.size)
    rate = (100 * rate / answers.size)
  end
  
end
