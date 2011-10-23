class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.text :description
      t.integer :hours

      t.timestamps
    end
  end
end
