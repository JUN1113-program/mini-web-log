class AddImageUrlToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :imageurl, :string
    remove_column :images, :image, :string
  end
end
