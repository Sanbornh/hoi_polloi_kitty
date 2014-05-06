class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :goal
      t.date :funding_start
      t.date :funding_end

      t.timestamps
    end
  end
end
