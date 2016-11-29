class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id 
      t.integer :parking_place_id
      t.text :comment 
      t.timestamps null: false
      t.timestamps
    end
  end
end
