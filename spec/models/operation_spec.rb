require 'spec_helper'

describe Operation do
  context "calculating operations answers" do
    before :each do
      @operation = FactoryGirl.create(:operation)
    end
    
    it "gets the correct answer for sum exersice" do
      @operation.should be_valid
       @operation.answer.should be 20
    end
  
    it "gets the correct answer for substraction exersice" do
      @operation.should be_valid
      @operation.operator = "-"
      @operation.answer.should be -16
    end
  
    it "gets the correct answer for multiplication exersice" do
      @operation.should be_valid
      @operation.operator = "*"
      @operation.answer.should be 336
    end
  
    it "gets the correct answer for division exersice bigger than 0" do
      @operation.numbers = "256,002,4"
      @operation.should be_valid
      @operation.operator = "/"
      @operation.answer.should be 32
    end
    
  end
  
end
