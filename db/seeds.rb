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
    price: 18
  }
]
Item.create!(skates)



lena = Owner.new [
{
  email: "Lena@lena.com"
  password: "12345"

}

]

pierce = User.new [
{
  name: "Pierce5000"
  email: "Pierce@pierce.com"
  password: "12345"
}

]

