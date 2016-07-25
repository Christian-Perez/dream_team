# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Team.delete_all
Roster.delete_all

user1 = User.create({name: 'Mojo', password: 'password'})
user2 = User.create({name: 'Him', password: 'password'})
user3 = User.create({name: 'princess', password: 'password'})
team1 = Team.create({name: "The Beat-Alls", tag: 'WE BEAT ALL!', mission: 'founded to defeat the powerpuff girls'})

user4 = User.create({name: 'player1', password: 'password'})
user5 = User.create({name: 'player2', password: 'password'})
team2 = Team.create({name: 'gamers', tag: 'first person shooters', mission: 'defeat the enemy team'})


# roster1 = User.first.rosters.create()
# Team.first.rosters << roster1
Roster.create({team: team1, user: user1, role: 'laser turret', is_owner: true})
# Roster.create({team: 1, user: 2, role: 'evil magic', is_owner: false})
# Roster.create({team: 1, user: 3, role: 'cold, hard cash', is_owner: false})
