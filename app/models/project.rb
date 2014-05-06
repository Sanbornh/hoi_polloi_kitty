class Project < ActiveRecord::Base
	has_many :break_points

	validates_presence_of :name, :description, :goal, :funding_start, :funding_end
end
