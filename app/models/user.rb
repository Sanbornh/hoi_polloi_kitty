class User < ActiveRecord::Base

	has_many :projects #various projects that have been created by this user
  has_many :projects, through: :pledges #various projects where this user has pledged
	
  authenticates_with_sorcery!

  validates :name, :email, presence: true, on: :create
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
 
  validates_uniqueness_of :email
end
