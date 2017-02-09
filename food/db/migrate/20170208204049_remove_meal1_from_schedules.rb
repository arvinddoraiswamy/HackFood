class RemoveMeal1FromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :meal1, :varchar
    remove_column :schedules, :meal2, :varchar
    remove_column :schedules, :meal3, :varchar
    remove_column :schedules, :meal4, :varchar
    remove_column :schedules, :meal5, :varchar
  end
end
