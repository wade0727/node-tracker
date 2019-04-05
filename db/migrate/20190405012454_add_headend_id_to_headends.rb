class AddHeadendIdToHeadends < ActiveRecord::Migration[5.2]
  def change
    add_column :headends, :headend_id, :integer
  end
end
