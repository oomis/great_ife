class CreateOaues < ActiveRecord::Migration[5.2]
  def change
    create_table :oaues do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
