class AddSlugToUserblogs < ActiveRecord::Migration
  def change
    add_column :userblogs, :slug, :string
    add_index :userblogs, :slug, unique: true
  end
end
