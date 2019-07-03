


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


