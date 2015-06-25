class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.date :day_borrow
      t.date :day_estimated_return
      t.date :day_actual_return
      t.integer :media_id
      t.integer :user_id
      t.text :review

      t.timestamps
    end
  end
end
