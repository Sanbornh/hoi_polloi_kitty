class AddUserIdToPledge < ActiveRecord::Migration
  def change
  	add_column :pledges, :user_id,    :integer
  	add_column :pledges, :project_id, :integer
  end
end 
