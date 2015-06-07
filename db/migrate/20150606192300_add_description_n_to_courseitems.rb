class AddDescriptionNToCourseitems < ActiveRecord::Migration
  def change
    add_column :courseitems, :description, :text
  end
end
