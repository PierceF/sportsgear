lena = Owner.create!(email: 'lena@lena.com',password: '123456')
pontus = User.create!(email: 'pontus@pontus.com',password: '123456')
steven = Owner.create!(email: 'steven@steven.com',password: '123456')
pierce = User.create!(email: 'pierce@pierce.com',password: '123456')


skates = Item.create!(name: 'skates', price: 12, description: 'Used to roll around', owner_id: 1)
football = Item.create!(name: 'football', price: 15, description: 'An American handegg', owner_id: 2)

deal1 = Deal.create!(item_id: 1, user_id: 1, status: 'pending', duration: 2, start_date: Date.today)
deal2 = Deal.create!(item_id: 2, user_id: 1, status: 'pending', duration: 2, start_date: Date.today)
