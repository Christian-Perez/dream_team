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

mojo = User.create({name: 'Mojo', password: 'password'})
him = User.create({name: 'Him', password: 'password'})
princess = User.create({name: 'princess', password: 'password'})
beatalls = Team.create({name: "The Beat-Alls", tag: 'WE BEAT ALL!', mission: 'founded to defeat the powerpuff girls'})



blossom = User.create({name: 'blossom', password: 'password'})
bubbles = User.create({name: 'bubbles', password: 'password'})
buttercup = User.create({name: 'buttercup', password: 'password'})
powerpuff_girls = Team.create({name: 'powerpuff_girls', tag: 'protecting the world from the forces of evil', mission: 'we have ultra super powers'})


# roster1 = User.first.rosters.create()
# Team.first.rosters << roster1
Roster.create({team: beatalls, user: mojo, role: 'laser turret', is_owner: true})
Roster.create({team: beatalls, user: him, role: 'evil power', is_owner: false})
Roster.create({team: beatalls, user: princess, role: 'cold hard cash', is_owner: false})

Roster.create({team: powerpuff_girls, user: blossom, role: 'commander and leader', is_owner: true})
Roster.create({team: powerpuff_girls, user: bubbles, role: 'joy and laughter', is_owner: false})
Roster.create({team: powerpuff_girls, user: buttercup, role: 'toughest fighter', is_owner: false})
# Roster.create({team: 1, user: 2, role: 'evil magic', is_owner: false})
# Roster.create({team: 1, user: 3, role: 'cold, hard cash', is_owner: false})
