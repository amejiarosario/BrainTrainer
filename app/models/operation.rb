class Operation < ActiveRecord::Base
  belongs_to :exercise
  
  attr_accessible :align, :numbers, :operator
  
  @@op_pattern = /\A[\+\-\*\/\^](\d+)?\Z/
  
  validates :align, :numbers, :operator, presence: true
  validates :align, inclusion: { in: %w(horizontal vertical)}
  validates :operator, format: { with: @@op_pattern, 
    message: "The only operations allowed are: +, -, *, /, and ^. Additionally you can add numbers after the operators and no spaces." }
    
  def answer
    m = @@op_pattern.match self.operator
    num = (m[0].empty?)? 0 : m[0].to_i
    self.numbers.split(",").collect{|n| n=n.to_i}.inject(num){|r,e| r+=e}
  end
  
end
