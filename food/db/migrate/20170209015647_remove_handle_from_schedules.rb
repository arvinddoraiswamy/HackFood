class RemoveHandleFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :handle, :varchar
  end
end
