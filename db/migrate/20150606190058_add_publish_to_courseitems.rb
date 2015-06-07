class AddPublishToCourseitems < ActiveRecord::Migration
  def change
    add_column :courseitems, :publish, :boolean
  end
end
