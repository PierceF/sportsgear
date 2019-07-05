# Item.destroy_all
# Owner.destroy_all
# User.destroy_all
# Deal.destroy_all


lena = Owner.create!(email: 'lena@lena.com',password: '123456', address: 'Zacharias Jansestraat 5, Amsterdam, The Netherlands')
pontus = User.create!(email: 'pontus@pontus.com',password: '123456', address: 'Blastraat 5, Amsterdam, The Netherlands')
steven = Owner.create!(email: 'steven@steven.com',password: '123456', address: 'Dam 5, 1012RB, Paris, France')
pierce = User.create!(email: 'pierce@pierce.com',password: '123456')



skates = Item.create!(name: 'skates', price: 12, description: 'Used to roll around', owner_id: 1)
football = Item.create!(name: 'football', price: 15, description: 'An American handegg', owner_id: 2)
rentedItem = Item.create!(name: 'rented out', price: 15, description: 'This item has been rented', owner_id: 2)
trampoline = Item.create!(name: 'trampoline', price: 25, description: 'YOU NEED TO PROVIDE YOUR OWN TRANSPORTATION, OK? DONT SHOW UP LIKE THE LAST IDIOT AND TRY TO CARRY IT ON YOUR BACK', owner_id: 1)
drone = Item.create!(name: 'drone', price: 35, description: 'Annoy everyone with this super loud drone!  Takes lots of beautiful pics no one will want to see.', owner_id: 2)
rentedItem2 = Item.create!(name: 'rented out', price: 15, description: 'This item has been rented', owner_id: 1)

deal1 = Deal.create!(item_id: 1, user_id: 1, status: 'pending', duration: 2, start_date: Date.today, end_date: Date.today + 2)
deal2 = Deal.create!(item_id: 2, user_id: 2, status: 'pending', duration: 2, start_date: Date.today, end_date: Date.today + 2)
deal3 = Deal.create!(item_id: 3, user_id: 1, status: 'ongoing', duration: 2, start_date: Date.today, end_date: Date.today + 2)
deal4 = Deal.create!(item_id: 3, user_id: 1, status: 'finished', duration: 2, start_date: Date.today - 10, end_date: Date.today - 8)
deal5 = Deal.create!(item_id: 5, user_id: 2, status: 'ongoing', duration: 2, start_date: Date.today - 2, end_date: Date.today - 1)

deal6 = Deal.create!(item_id: 6, user_id: 1, status: 'ongoing', duration: 2, start_date: Date.today, end_date: Date.today + 2)
deal7 = Deal.create!(item_id: 1, user_id: 1, status: 'finished', duration: 2, start_date: Date.today - 10, end_date: Date.today - 8)
deal8 = Deal.create!(item_id: 1, user_id: 1, status: 'ongoing', duration: 2, start_date: Date.today - 2, end_date: Date.today - 1)
