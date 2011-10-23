class CreateCourseClasses < ActiveRecord::Migration
  def change
    create_table :course_classes do |t|
      t.references :course
      t.string :location
      t.string :schedule

      t.timestamps
    end
    add_index :course_classes, :course_id
  end
end
