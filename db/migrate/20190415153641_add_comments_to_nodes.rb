class AddCommentsToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :comments, :text
  end
end
