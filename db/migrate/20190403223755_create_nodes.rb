class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.string :node
      t.string :txlocation
      t.string :rxlocation

      t.timestamps
    end
  end
end
