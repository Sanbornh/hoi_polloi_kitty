class Project < ActiveRecord::Base
	has_many :break_points
	has_many :pledges

  accepts_nested_attributes_for :break_points, :reject_if => :all_blank, :allow_destroy => true
	validates_presence_of :name, :description, :goal, :funding_start, :funding_end

	after_initialize :init

	def init
		self.amount_raised = 0
	end
end
