require 'spec_helper'

describe Exercise do
  before :each do
    @ex = FactoryGirl.create(:exercise)
    @op = FactoryGirl.create(:operation)
  end
  
  context "validations" do
    it "should be valid" do
      @ex.should be_valid
      @op.should be_valid
    end
  end
  
  context "calculating operations answers without any exercise" do
    it "answers should be nil" do
      @ex.answers.should be_nil
    end
    it "get total of correct answers in percentage: 'rate' method" do
      @ex.rate([20,40]).should be_nil
    end
  end
  
  context "calculating operations answers" do
    before :each do 
       @ex.operations << @op
    end
    
    it "get total of correct answers in percentage: 'rate' method" do
      @ex.rate([20]).should be 100
    end
    
    it "get total of incorrect answers in percentage: 'rate' method" do
      @ex.rate([90]).should be 0
    end
    
    it "get array of all the operations answers: 'answers' method" do
      @ex.answers.should eq [20]
    end
    it "get total of correct answers in percentage: 'check_answers' method" do
       @ex.check_answers([20]).should be true
    end
    
    context "multiple exercises" do
      before :each do 
        @op2 = Operation.create(numbers: "3,2,4", operator: "+", align:"vertical")
        @ex.operations << @op2
        @ans = [20,9]
      end

      it "get total of correct answers in percentage: 'rate' method" do
        @ex.rate([20,9]).should be 100
      end
      
      it "get total of incorrect answers in percentage: 'rate' method" do
        @ex.rate([10,9]).should be 50
      end
      
      it "get total of incorrect answers and incomplete in percentage: 'rate' method" do
        @ex.rate([9]).should be 0
      end

      it "get array of all the operations answers: 'answers' method" do
        @ex.answers.should eq @ans
      end
      it "get total of correct answers in percentage: 'check_answers' method" do
         @ex.check_answers(@ans).should be true
      end      
    end
    
  end
  
end
