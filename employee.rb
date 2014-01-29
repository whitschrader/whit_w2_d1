class Employee

	attr_accessor :name, :title

	@@employee_count = 0

	def initialize(name, title)
		@name = name
		@title = title
		@@employee_count += 1
	end

	def introduce()
		"Hi, my name is #{name}."
	end

	def self.count()
		@@employee_count  #returns the employee_count class variable, 
		#which ges incremented everytime employy_count is intatiated
	end

	def get_title()
		"Your title is #{@title}."
	end


	def self.resign()
		@@employee_count -= 1
	end




end

