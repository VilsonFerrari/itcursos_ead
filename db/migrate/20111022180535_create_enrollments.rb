class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :course_class
      t.references :person

      t.timestamps
    end
    add_index :enrollments, :course_class_id
    add_index :enrollments, :person_id
  end
end
