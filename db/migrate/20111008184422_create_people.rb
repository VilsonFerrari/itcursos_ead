class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :cpf
      t.string :name
      t.string :email
      t.string :sex
      t.date :birth_date
      t.string :parents

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
