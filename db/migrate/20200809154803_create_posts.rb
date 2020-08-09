class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.float :rate
      t.integer :shift_hours
      t.integer :babysitter_id

      t.timestamps
    end
  end
end
