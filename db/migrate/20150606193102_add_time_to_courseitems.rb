class AddTimeToCourseitems < ActiveRecord::Migration
  def change
    add_column :courseitems, :time, :string
  end
end
