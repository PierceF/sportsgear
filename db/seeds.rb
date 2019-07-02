# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lena = Owner.create!(email: "lena@lena.com", password: "123456", password_confirmation: "123456")

steven = Owner.create!(email: "steven@steven.com", password: "123456", password_confirmation: "123456")

pierce = User.create!(email: "pierce@pierce.com", password: "123456", password_confirmation: "123456")

pontus = User.create!(email: "pontus@pontus.com", password: "123456", password_confirmation: "123456")

skates = [
  {
    name: 'skates',
    description: 'roll around',
    price: 18,
    owner_id: 1
  }
]

ball = [
  {
    name: 'ball',
    description: 'roll around',
    price: 18,
    owner_id: 2
  }
]

deal1 = [
  {
    status: 'penng',
    item_id: 1,
    user_id: 1
  }
]
Item.create!(skates)
Item.create!(ball)
Deal.create!(deal1)


