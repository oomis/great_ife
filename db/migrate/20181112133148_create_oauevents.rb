class CreateOauevents < ActiveRecord::Migration[5.2]
  def change
    create_table :oauevents do |t|
      t.string :title
      t.text :body
      t.integer :fee

      t.timestamps
    end
  end
end
