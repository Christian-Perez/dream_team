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

mojo = User.create({name: 'Mojojojo', email: 'mojojojo@email.com', password: 'password', image:'http://vignette2.wikia.nocookie.net/villains/images/f/fa/Mojo-Jojo-Photo.gif/revision/latest?cb=20121011211806'})
him = User.create({name: 'Him', email: 'him@email.com', password: 'password', image: 'http://41.media.tumblr.com/tumblr_m6y688Bo291qke3bko1_500.png'})
princess = User.create({name: 'princess', email: 'princess@email.com', password: 'password', image: 'http://vignette2.wikia.nocookie.net/superheroes/images/4/42/Princess.jpg/revision/latest?cb=20140708015013'})
fuzzy = User.create({name: 'fuzzy lumpkins', email: 'fuzzy@email.com', password: 'password', image: 'http://vignette2.wikia.nocookie.net/powerpuff/images/4/42/Fuzzy_Lumpkins.jpg/revision/latest?cb=20100907134927'})
beatalls = Team.create({name: "The Beat-Alls", tag: 'WE BEAT ALL!', mission: 'founded to defeat the powerpuff girls', image: 'http://vignette2.wikia.nocookie.net/villains/images/3/35/The_Beat-Alls.jpg/revision/latest?cb=20130908205827'})
Roster.create({team: beatalls, user: mojo, role: 'laser turret', is_owner: true})
Roster.create({team: beatalls, user: him, role: 'evil power', is_owner: false})
Roster.create({team: beatalls, user: princess, role: 'cold hard cash', is_owner: false})
Roster.create({team: beatalls, user: fuzzy, role: 'rock', is_owner: false})

blossom = User.create({name: 'blossom', email: 'blossom@email.com', password: 'password', image: 'http://vignette3.wikia.nocookie.net/powerpuff/images/2/23/Blossom-pic.png/revision/latest?cb=20130517081824'})
bubbles = User.create({name: 'bubbles', email: 'bubbles@email.com', password: 'password', image: 'http://67.media.tumblr.com/0757ae70f5dbf3a7ea9ece4486523d6c/tumblr_inline_npr0a59Ic31slrvm0_500.jpg'})
buttercup = User.create({name: 'buttercup', email: 'buttercup@email.com', password: 'password', image: 'http://vignette3.wikia.nocookie.net/powerpuff/images/4/4b/BUTTERCUP.jpeg.jpg/revision/latest?cb=20130602234515'})
powerpuff_girls = Team.create({name: 'powerpuff girls', tag: 'fighting crime and the forces of evil', mission: 'we have ultra super powers', image: 'https://upload.wikimedia.org/wikipedia/en/9/95/Powerpuff_girls_characters.jpg'})
Roster.create({team: powerpuff_girls, user: blossom, role: 'commander and leader', is_owner: true})
Roster.create({team: powerpuff_girls, user: bubbles, role: 'joy and laughter', is_owner: false})
Roster.create({team: powerpuff_girls, user: buttercup, role: 'toughest fighter', is_owner: false})

team_up = Team.create({name: 'team up', tag: 'fighting the greater of two evils', mission: 'stop Him from stealing all of Mojos evil plans'})
Roster.create({team: team_up, user: mojo, role: 'mastermind', is_owner: true})
Roster.create({team: team_up, user: blossom, role: 'all the heavy lifting', is_owner: false})
Roster.create({team: team_up, user: bubbles, role: 'all the heavy lifting', is_owner: false})
Roster.create({team: team_up, user: buttercup, role: 'all the heavy lifting', is_owner: false})

Roster.create({team: team_up, user: mojo, role: 'out-evil Him', is_owner: true})

# Roster.create({team: 1, user: 2, role: 'evil magic', is_owner: false})
# Roster.create({team: 1, user: 3, role: 'cold, hard cash', is_owner: false})
