class CreateIngratitudes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingratitudes do |t|
      t.string :notes
      t.string :parent_id
      t.string :post_id

      t.timestamps
    end
  end
end
