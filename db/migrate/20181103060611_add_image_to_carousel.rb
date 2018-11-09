class AddImageToCarousel < ActiveRecord::Migration[5.2]
  def change
    add_column :carousels, :image, :string
  end
end
