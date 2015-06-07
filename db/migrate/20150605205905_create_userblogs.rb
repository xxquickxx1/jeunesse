class CreateUserblogs < ActiveRecord::Migration
  def change
    create_table :userblogs do |t|
      t.string :title
      t.string :subtitle
      t.text :intro
      t.text :description
      t.string :tags
      t.string :seo_title
      t.text :meta_description
      t.string :category
      t.string :user_id
      t.integer :template_id

      t.timestamps null: false
    end
  end
end
