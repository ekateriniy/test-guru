class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 1, null: false
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
