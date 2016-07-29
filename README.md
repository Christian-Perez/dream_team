#Dream Team

Dream Team is an app for defining an objective to be completed by a team of individuals. Each Team member can be assigned a role by the team owner and if circumstances change, the owner can refine the team's objective or team member's roles. users can upload an image of themselves so that their team can recognize them in person. 

Ruby on Rails, HTML, CSS, & Bootstrap were used to create this app

To install and use this on your computer, 
 * fork & clone this repo to your local machine.
 * open the terminal and run: bundle install, rake db:create, rake db:migrate
 * if you want to seed the database with predefined users & teams, run rake db:seed. 
 * to view in your browser, first run 'rails s' 
 * in your browser then navigate to 'localhost:3000' in your web browser. 

The app inclues three models; User, Team, & Roster. 

go here to use a LIVE VERSION of the app hosted on Heroku
https://hidden-stream-64272.herokuapp.com/

go here to checkout user stories on TRELLO
https://trello.com/b/KbHDWBVH/dreamteam-project-2

Things To Do:
 * Add a modal containing a form to edit user roles
 * hide create new team on user profiles that don't belong to the current_user
 * refactor styling
 * refactor working code
 * 
 
![erd](http://res.cloudinary.com/mrbrd/image/upload/v1469202018/Screenshot_2016-07-22_08.38.37_knmxjb.png)

![wireframe 1](http://res.cloudinary.com/mrbrd/image/upload/v1469166752/IMG_20160721_175720_sh4ltz.jpg)
![wireframe 2](http://res.cloudinary.com/mrbrd/image/upload/v1469202970/IMG_20160722_085025_hfeqbi.jpg)


