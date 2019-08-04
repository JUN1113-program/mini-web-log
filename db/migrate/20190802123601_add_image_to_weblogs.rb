class AddImageToWeblogs < ActiveRecord::Migration[5.2]
  def change
    add_column :weblogs, :image, :string
  end
end
