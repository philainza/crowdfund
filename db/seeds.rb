# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!([
{
  name: "Jistlist",
  description: "A social network and meetup app for jiu-jitsu practitioners",
  target_pledge_amount: 100000.00,
  pledging_ends_on: 40.days.from_now,
  website: "http://www.jitslist.com"
},
{
  name: "Plutocracy",
  description: "Compete against your peers and win real money in this fantasy sports style mock trading app.",
  target_pledge_amount: 250000.00,
  pledging_ends_on: 32.days.from_now,
  website: "http://www.plutocracy.com"
},
{
  name: "Paper Route",
  description: "A modern 8-bit style remake of the classic video game, 'Paper Boy'.",
  target_pledge_amount: 300000.00,
  pledging_ends_on: 1.day.from_now,
  website: "http://www.paperroute.com"
}
])