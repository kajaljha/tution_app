class CreateBookParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :book_parkings do |t|
     	t.integer  :user_id
			t.datetime :booking_start_time
			t.datetime :booking_end_time
			t.float    :price
			t.integer  :parking_place_id
			t.boolean  :parking_status
      t.timestamp
    end
  end
end
