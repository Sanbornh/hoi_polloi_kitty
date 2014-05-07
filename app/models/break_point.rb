class BreakPoint < ActiveRecord::Base

	belongs_to :project

  validates_presence_of :value, :description
end
