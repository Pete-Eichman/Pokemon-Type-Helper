class CreateDefender < ActiveRecord::Migration[5.0]
  def change
    create_table :defenders do |t|
      t.string :maintype, null: false
      t.string :subtype
      t.integer :reaction_id
    end
  end
end
