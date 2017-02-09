class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :handle
      t.integer :weekid
      t.string :day
      t.integer :scheduleid
      t.string :meal1
      t.string :meal2
      t.string :meal3
      t.string :meal4
      t.string :meal5

      t.timestamps null: false
    end
  end
end
