class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.string :location
      t.integer :length

      t.timestamps null: false
    end
  end
end
