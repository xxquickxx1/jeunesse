class CreateCourseitems < ActiveRecord::Migration
  def change
    create_table :courseitems do |t|
      t.string :title
      t.text :intro
      t.string :image

      t.timestamps null: false
    end
  end
end
