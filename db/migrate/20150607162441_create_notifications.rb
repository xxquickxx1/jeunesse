class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :notiable_id
      t.string :notiable_type

      t.timestamps null: false
    end
  end
end
