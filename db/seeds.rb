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

User.create({name: 'Mojo', password: 'password'})
User.create({name: 'Him', password: 'password'})
User.create({name: 'princess', password: 'password'})
Team.create({name: "The Beat-Alls", tag: 'WE BEAT ALL!', about: 'ßfounded to defeat the powerpuff girls'})
Roster.create({team: 1, user: 1, role: 'laser turret', is_owner: true})
Roster.create({team: 1, user: 2, role: 'evil magic', is_owner: false})
Roster.create({team: Team.where(team: 1), user: 3, role: 'cold, hard cash', is_owner: false})
