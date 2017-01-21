class CreateType < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :typename, null: false
      t.integer :reaction_id
    end
  end
end
