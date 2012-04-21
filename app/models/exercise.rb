class Exercise < ActiveRecord::Base
  has_many :operations, dependent: :destroy
  has_many :scores, dependent: :destroy
  has_many :users, through: :scores
  
  accepts_nested_attributes_for :operations, allow_destroy: :true, reject_if: lambda {|a| a[:numbers].blank? }
  
  attr_accessible :long_description, :no, :short_description, :operations_attributes
  
  validates :long_description, :no, :short_description, presence: true
  validates :no, uniqueness: true
  
  def check_answers(results)
    ans = self.operations.inject([]){|s,e| s << e.answer}
    logger.debug ans.inspect
    logger.debug results
    results == ans
  end
  
end
