require "spec_helper"

describe BreakPoint do 
  let(:break_point) { FactoryGirl.build(:break_point) }

  it "should have a valid factory" do
    break_point.should be_valid
  end

  it "should validate presence of the break point's value" do
    break_point.value = nil
    break_point.should_not be_valid
  end

  it "should validate presence of the break point's description" do
    break_point.description = nil
    break_point.should_not be_valid
  end
end