# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#first_loan = Loan.create(amount: 700, valid_until: Date.new(2018, 8, 25), additional_details: "Sin detalles adicionales")
#second_loan = Loan.create(amount: 12500, valid_until: Date.new(2019, 3, 25), additional_details: "Sin detalles adicionales")
#third_loan = Loan.create(amount: 600, valid_until: Date.new(2018, 7, 25), additional_details: "Sin detalles adicionales")
first_user = User.create(name: "Alexander", lastname: "Peredo Torossova", email: "aptpta@yahoo.es", phone: "77498233", address: "Calle I. Aranbiar #4460", country: "Bolivia", city: "Cochabamba", password: "Arsenal2012*", ci: "6553266")