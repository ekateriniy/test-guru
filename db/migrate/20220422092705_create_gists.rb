class CreateGists < ActiveRecord::Migration[6.1]
  def change
    create_table :gists do |t|
      t.string :url, null: false
      t.references :users, foreign_key: true, null: false
      t.references :questions, foreign_key: true, null: false

      t.timestamps
    end
  end
end
