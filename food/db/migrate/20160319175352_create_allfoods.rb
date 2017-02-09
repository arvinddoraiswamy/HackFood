class CreateAllfoods < ActiveRecord::Migration
  def change
    create_table :allfoods do |t|
      t.string :item
      t.string :foodgroup
      t.string :vitamin
      t.string :mineral
      t.string :otherelements

      t.timestamps null: false
    end
  end
end
