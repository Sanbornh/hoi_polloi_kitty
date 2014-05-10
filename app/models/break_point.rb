class BreakPoint < ActiveRecord::Base

	belongs_to :project
  has_many :pledges

  validates_presence_of :value, :description
end
