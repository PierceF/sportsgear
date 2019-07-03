# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

tent = [
  {
    name: 'Tent',
    description: 'tent',
    price: 18,
    owner_id: 2
  }
]

shoes = [
  {
    name: 'shoes',
    description: 'roll around',
    price: 18,
    owner_id: 2
  }
]


deal1 = [
  {
    status: 'pending',
    item_id: 1,
    user_id: 1
  }
]

Item.create!(skates)
Item.create!(ball)
Deal.create!(deal1)
Item.create!(tent)
Item.create!(shoes)


