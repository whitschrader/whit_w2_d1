require './employee'
require 'spec_helper'

describe Employee do

	before(:each) do
		@employee = Employee.new("Whit", "Student")

		@employee1 = Employee.new("AnotherEmployees", "Title")
	end


	it "has a name " do
		@employee.name.should eq("Whit") #this is our test
	end

		# this syntax also works
		# employee.name.should == "YourName"

	it "introduce yourself" do
		@employee.introduce.should == "Hi, my name is Whit."
	end

	it "updates employee count" do
		Employee.count.should == 2
	end

	it "states title" do
		@employee.get_title.should == "Your title is Student."
	end

	after(:each) do
		Employee.resign
		Employee.resign
	end



end
