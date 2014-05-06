class CreateBreakPoints < ActiveRecord::Migration
  def change
    create_table :break_points do |t|
      t.integer :value
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
