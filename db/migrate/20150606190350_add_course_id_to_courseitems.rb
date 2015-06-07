class AddCourseIdToCourseitems < ActiveRecord::Migration
  def change
    add_column :courseitems, :course_id, :integer
  end
end
