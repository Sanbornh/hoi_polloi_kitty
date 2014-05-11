class Project < ActiveRecord::Base

  belongs_to :user #the user who creates the project
	has_many :break_points 
	has_many :users, through: :pledges  #users who pledge various amounts to the project

  accepts_nested_attributes_for :break_points, :reject_if => :all_blank, :allow_destroy => true
	validates_presence_of :name, :description, :goal, :funding_start, :funding_end

	after_initialize :init

  before_save :capitalize_name

	def init
		self.amount_raised = 0
	end

  def update_amount_raised

    #have to figure out the amount PLEDGED when a specific BREAKPOINT is clicked

    updated_amount_raised = self.update_attribute(:amount_raised, self.amount_raised + pledged_value)
    amount_left_to_be_raised = self.goal - updated_amount_raised

    if updated_amount_raised == self.goal
      "Thank you for your contribution of $#{amount_pledged}! #{self.name} has reached it's goal of raising $#{self.goal}."
    else
      "Thank you for your contribution! #{self.name} is $#{amount_left_to_be_raised} away from reaching it's goal. Spread the word!"
    end
  end

  private

  def capitalize_name
    self.name = self.name.split.map(&:capitalize).join(' ')
  end

end
