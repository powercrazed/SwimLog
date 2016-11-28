class AddPoolToSwim < ActiveRecord::Migration
  def change
    add_reference :swims, :pool, index: true, foreign_key: true
  end
end
