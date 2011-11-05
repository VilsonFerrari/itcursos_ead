class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :name
      t.references :location
      t.string :description

      t.timestamps
    end
    add_index :labs, :location_id
  end
end
