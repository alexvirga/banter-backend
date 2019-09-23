# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  email: "alexander.virga@gmail.com",
  password: "password",
  username: "alexvirga",
)

user2 = User.create!(
  email: "Test1",
  password: "Test1",
  username: "testman",
)

user3 = User.create!(
  email: "Test",
  password: "Test",
  username: "al",
)

group1 = Group.create!(
  group_code: "ABCDE",
  bill_total: "200",

)

group2 = Group.create!(
  group_code: "BCDEF",
  bill_total: "200",

)

party1 = UserGroup.create!(
  group_id: 1,
  user_id: 1,
  user_payment_amt: "23",
)

party2 = UserGroup.create!(
  group_id: 1,
  user_id: 2,
  user_payment_amt: "54",
)

party3 = UserGroup.create!(
  group_id: 2,
  user_id: 2,
  user_payment_amt: "54",
)

party3 = UserGroup.create!(
  group_id: 2,
  user_id: 3,
  user_payment_amt: "54",
)
