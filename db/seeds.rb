# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  email: "Test",
  password: "Test",
  username: "alexvirga",
)

user2 = User.create!(
  email: "Test1",
  password: "Test1",
  username: "Testman",
)

user3 = User.create!(
  email: "Test2",
  password: "Test2",
  username: "Testwoman",
)
user4 = User.create!(
  email: "Test3",
  password: "Test3",
  username: "Flatiron Student",
)

user5 = User.create!(
  email: "Test4",
  password: "Test4",
  username: "Real User",
)

group1 = Group.create!(
  group_code: "ABCDE",
  bill_total: 200,
  tip_percentage: 20,

)

group2 = Group.create!(
  group_code: "BCDEF",
  bill_total: 200,
  tip_percentage: 20,

)

party1 = UserGroup.create!(
  group_id: 1,
  user_id: 1,
  user_payment_amt: 25,
)

party2 = UserGroup.create!(
  group_id: 1,
  user_id: 2,
  user_payment_amt: 20,
)

party3 = UserGroup.create!(
  group_id: 2,
  user_id: 2,
  user_payment_amt: 40,
)

party4 = UserGroup.create!(
  group_id: 2,
  user_id: 3,
  user_payment_amt: 30,
)

party5 = UserGroup.create!(
  group_id: 1,
  user_id: 3,
  user_payment_amt: 25,
)

party5 = UserGroup.create!(
  group_id: 1,
  user_id: 4,
  user_payment_amt: 10,
)

party6 = UserGroup.create!(
  group_id: 1,
  user_id: 5,
  user_payment_amt: 15,
)
