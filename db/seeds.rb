# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


people = 10.times { Person.create(:cpf => '0000000000', :name => 'Nome', :email => 'mail@example.com', :sex => 'sexo', :birth_date => '2011-10-08', :parents => 'Filiacao' ) }