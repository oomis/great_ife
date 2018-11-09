class CreateCarousels < ActiveRecord::Migration[5.2]
  def change
    create_table :carousels do |t|
      t.string :title
      t.integer :category_id
      t.text :body
      t.integer :order

      t.timestamps
    end
  end
end
