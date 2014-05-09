class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :name, :email, presence: true, on: :create
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
 
  validates_uniqueness_of :email
end
