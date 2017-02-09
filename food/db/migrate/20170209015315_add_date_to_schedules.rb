class AddDateToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :date, :varchar
  end
end
