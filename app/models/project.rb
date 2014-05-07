class Project < ActiveRecord::Base
	has_many :break_points

  accepts_nested_attributes_for :break_points, :reject_if => :all_blank, :allow_destroy => true
	validates_presence_of :name, :description, :goal, :funding_start, :funding_end
end
