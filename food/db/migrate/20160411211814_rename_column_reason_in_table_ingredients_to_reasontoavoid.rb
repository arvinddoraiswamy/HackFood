class RenameColumnReasonInTableIngredientsToReasontoavoid < ActiveRecord::Migration
  def change
    rename_column :ingredients, :reason, :reasontoavoid
  end
end
