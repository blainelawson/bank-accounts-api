# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Blaine", last_name: "Lawson", address_address_1: "my address", address_city: "Seminole", address_state: "FL")

BankAccount.create(user_id: 1, account_type: "checking", amount: 100000)
BankAccount.create(user_id: 1, account_type: "savings", amount: 40)