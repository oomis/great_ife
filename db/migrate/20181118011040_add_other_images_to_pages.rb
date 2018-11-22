class AddOtherImagesToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :OtherImages, :string
  end
end
