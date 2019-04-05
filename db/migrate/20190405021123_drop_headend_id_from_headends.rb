class DropHeadendIdFromHeadends < ActiveRecord::Migration[5.2]
  def change
    remove_column :headends, :headend_id, :integer
  end
end
