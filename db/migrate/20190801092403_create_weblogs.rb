class CreateWeblogs < ActiveRecord::Migration[5.2]
  def change
    create_table :weblogs do |t|

      t.timestamps
    end
  end
end
