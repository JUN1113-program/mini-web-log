class CreateWeblogs < ActiveRecord::Migration[5.2]
  def change
    create_table :weblogs do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :viewed
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
