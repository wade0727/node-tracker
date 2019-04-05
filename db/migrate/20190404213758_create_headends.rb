class CreateHeadends < ActiveRecord::Migration[5.2]
  def change
    create_table :headends do |t|
      t.string :headend

      t.timestamps
    end
  end
end
