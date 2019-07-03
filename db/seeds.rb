lena = Owner.create!(email: 'lena@lena.com',password: '123456')
pontus = User.create!(email: 'pontus@pontus.com',password: '123456')
steven = Owner.create!(email: 'steven@steven.com',password: '123456')
pierce = User.create!(email: 'pierce@pierce.com',password: '123456')


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



Item.create!(ball)
Item.create!(tent)



