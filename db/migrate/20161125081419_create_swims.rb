class CreateSwims < ActiveRecord::Migration
  def change
    create_table :swims do |t|
      t.datetime :when
      t.integer :duration
      t.integer :distance

      t.timestamps null: false
    end
  end
end
