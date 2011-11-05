class AddLocationIdToCourseClass < ActiveRecord::Migration
  def change
    add_column :course_classes, :location_id, :integer
  end
end
