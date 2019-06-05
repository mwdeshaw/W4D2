# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Cat.destroy_all

  cat1 = Cat.create!(name: "Snowball", birth_date: "2017/05/20", color: "white", sex: "M", description: "Beautiful cat.")
  cat2 = Cat.create!(name: "Patches", birth_date: "2015/03/20", color: "brown", sex: "F", description: "Energetic cat.")
  cat3 = Cat.create!(name: "Franklin", birth_date: "2016/01/20", color: "black", sex: "M", description: "Mischevious cat.")
  cat4 = Cat.create!(name: "Big Pappi", birth_date: "2014/08/20", color: "blue", sex: "M", description: "Likes to rap.")
  cat5 = Cat.create!(name: "Artemis", birth_date: "2019/03/25", color: "white", sex: "F", description: "Goddess feline.")


  CatRentalRequest.destroy_all

  rental1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: Date.current, end_date: Date.current.next_month)
  rental2 = CatRentalRequest.create!(cat_id: cat4.id, start_date: Date.current.last_year, end_date: Date.current.next_year, status: 'APPROVED')

end