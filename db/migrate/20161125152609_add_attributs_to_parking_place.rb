class AddAttributsToParkingPlace < ActiveRecord::Migration[5.0]
 def change
    add_column :parking_places, :class_name, :string
    add_column :parking_places, :subject_name, :string
    add_column :parking_places, :yearly_fee, :float
  end
end
