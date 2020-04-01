# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(first_name: "Afnan", last_name: "MT", diagnosis:"something to write here :) " , doctor_id: 1)
Patient.create(first_name: "Huda", last_name: "MT", diagnosis:"something to write here :) " , doctor_id: 1)
Patient.create(first_name: "Nada", last_name: "MT", diagnosis:"something to write here :) ", doctor_id: 2)

Doctor.create(first_name: "Nada", last_name: "MT", zip_code: 2545 , specialty: "string" )
Doctor.create(first_name: "Huda", last_name: "MT", zip_code: 2545 , specialty: "string" )
Doctor.create(first_name: "Sara", last_name: "MT", zip_code: 2545 , specialty: "string" )
Doctor.create(first_name: "Dana", last_name: "MT", zip_code: 2545 , specialty: "string" )
