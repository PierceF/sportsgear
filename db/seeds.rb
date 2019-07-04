lena = Owner.create!(email: 'lena@lena.com',password: '123456')
pontus = User.create!(email: 'pontus@pontus.com',password: '123456')
steven = Owner.create!(email: 'steven@steven.com',password: '123456')
pierce = User.create!(email: 'pierce@pierce.com',password: '123456')


skates = Item.create!(name: 'skates', price: 12, description: 'Used to roll around', owner: lena)
football = Item.create!(name: 'football', price: 15, description: 'An American handegg', owner: pontus)


