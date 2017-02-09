class AddFruit1ToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :fruit1, :varchar
    add_column :schedules, :fruit2, :varchar
    add_column :schedules, :fruit3, :varchar
    add_column :schedules, :fruit4, :varchar
    add_column :schedules, :fruit5, :varchar
    add_column :schedules, :veggie1, :varchar
    add_column :schedules, :veggie2, :varchar
    add_column :schedules, :veggie3, :varchar
    add_column :schedules, :veggie4, :varchar
    add_column :schedules, :protein1, :varchar
    add_column :schedules, :protein2, :varchar
    add_column :schedules, :protein3, :varchar
    add_column :schedules, :carbs1, :varchar
    add_column :schedules, :carbs2, :varchar
    add_column :schedules, :junk, :varchar
  end
end
