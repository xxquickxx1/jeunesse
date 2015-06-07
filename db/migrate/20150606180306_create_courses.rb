class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :intro
      t.string :image
      t.string :color

      t.timestamps null: false
    end
  end
end
