class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :title
      t.text :body
      t.integer :price
      #t.string :image

      t.timestamps
    end
  end
end
