class AddColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :amount_raised, :integer
  end
end
