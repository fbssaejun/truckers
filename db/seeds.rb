# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


trucker = Company.create(name: 'Trucker', email: 'inquiries@trucker.com', phone_number: '1-111-222-33333', description: 'Truck rental company')


User.create(company_id: 1, name: 'Anthony', role: 'admin', email: 'admin@trucker.com',
            password_hash: '$2b$12$h0q30TiUGYGhqvnBtm6hdOps3MQhSrOi6C89vyBCcYNqzxkpAoJrm') # 123465
User.create(company_id: 1, name: 'Franchesca', role: 'driver', email: 'driver@trucker.com',
            password_hash: '$2b$12$h0q30TiUGYGhqvnBtm6hdOps3MQhSrOi6C89vyBCcYNqzxkpAoJrm') # 123456


# Truck.create(company_id: 1, name: 'fancy truck', year: 2021, capacity: 1000, created_at: datetime)
# Truck.create(company_id: 1, name: 'cool truck', year: 2020, capacity: 1300)
# Truck.create(company_id: 1, name: 'classic truck', year: 1999, capacity: 900)
