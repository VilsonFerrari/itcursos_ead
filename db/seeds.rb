#encoding:utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


forenames = ['joão', 'maria', 'pedro', 'lucas', 'josé', 'matheus', 
             'gustavo', 'mariana', 'marta', 'lúcia', 'amanda', 'joaquim']
surnames = ['silva', 'pereira','medeiros', 'alves', 'maia', 'santos', 
            'cavalcante', 'souza', 'nascimento', 'rodrigues', 'oliveira', 'bezerra']

def generate_cpf
  cpf = ""
  11.times { cpf += rand(10).to_s }
  cpf
end

people = 10.times { 
  surname = surnames[rand(12)]
  forename = forenames[rand(12)]
  Person.create(:cpf => generate_cpf,
                :name => "#{forename.camelize} #{surname.camelize}", 
                :email => "#{forename.chars.first}.#{surname}@example.com", 
                :sex => 'sexo', :birth_date => '2011-10-08', :parents => 'Filiacao' )   
}
