class AddUserIdToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :user_id, :integer
  end
end
