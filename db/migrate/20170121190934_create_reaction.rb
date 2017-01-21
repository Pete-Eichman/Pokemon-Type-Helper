class CreateReaction < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.belongs_to :type, null: false
      t.belongs_to :defender, null: false
      t.string :value, null: false
    end
  end
end
