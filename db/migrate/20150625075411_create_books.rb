class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :auhter
      t.string :isbn13
      t.integer :owner_id

      t.timestamps
    end
  end
end
