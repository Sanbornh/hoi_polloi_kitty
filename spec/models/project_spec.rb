require "spec_helper"

describe Project do
	let(:project) { FactoryGirl.build(:project) }

  it "should have a valid factory" do
  	project.should be_valid
  end

  it "should validate presence of name" do 
  	project.name = nil
  	project.should_not be_valid
  end
  
end