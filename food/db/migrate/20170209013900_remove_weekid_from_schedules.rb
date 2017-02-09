class RemoveWeekidFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :weekid, :varchar
    remove_column :schedules, :scheduleid, :varchar
  end
end
