# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tax.create([{ tax_name: "vat", percentage: 12 }, { tax_name: "sgst", percentage: 17 }, { tax_name: "cgst", percentage: 7 }, { tax_name: "vat1", percentage: 17 }, { tax_name: "cgst1", percentage: 2 }, { tax_name: "sgst1", percentage: 13 }])
Customer.create([{name: "john", fiscal_id: "AS1234422"}, {name: "sam", fiscal_id: "YS1234422"}, {name: "sammy", fiscal_id: "YS1674422"}, {name: "tam", fiscal_id: "YS1290422"}, {name: "sunny", fiscal_id: "YN1234422"}, {name: "jonny", fiscal_id: "MS1234422"}])

User.create(email: "john@yopmail.com", name: "john", password: 123456, password_confirmation: 123456)