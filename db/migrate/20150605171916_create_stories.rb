class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.string :place
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
