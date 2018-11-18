class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
