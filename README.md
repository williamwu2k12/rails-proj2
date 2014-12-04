Rails Proj2
-------------

Title: Image Sharing Website

Team Members: William Wu, Nic Stone, Warren Tian

Demo Link: http://rocky-tundra-8244.herokuapp.com/

Youtube Demo Link: https://www.youtube.com/watch?v=a6g4SX4mBxc&feature=youtu.be

Idea: A web application where users can create accounts, post, share, view and discuss images.

Models and Description:
User
- has name, email, and possesses Cat objects and Comment objects
Cat
- has title, tag, likes, and comments.  Belongs to the uploader
Comment
- has likes and content, and belongs to both the Cat it's about and also the user who wrote the comment
Favorite
- has user ID and cat ID and allows for linking of the two
Likes
- has user ID and comment ID

Features:
- users can create an account and login
- users can upload pictures and post them to the gallery for the public to see
- users can view pictures posted by other users, comment on them, and vote on them
- users can vote on the comments
- users can sort comments by number of upvotes or most recent
- users can favorite images and view them on their own profile
- users can easily access their own comments and uploaded images from their profile
- users can visit other user’s profiles and see their favorites, comments, and submitted images
- visitors can view images in the gallery
- visitors can sign up

Note: We decided to change our project from a cat pictures site to a general image site late and changing model/controller names was difficult so we kept those.

Division of Labor:
We quickly realized that we didn't really like using github for a Rails project (since it's not simply changing one text file), so we decided not to use github as much because of the merge conflicts. Instead, we had one person "driving" (writing the code), one person advising the driver, and one person doing the web research for the current idea we were implementing. We pushed at moments when the code seemed stable. Sometimes when we got stuck on a bug, we all pulled and split to try to fix the bug. We rotated driving, advising, and researching every once in a while. Our general contributions, however, are:

William: Implemented seeds, created general structure of model, did lots of useful debugging, improved layout, worked on comment implementation, deployed to Heroku.

Nic: Worked with connecting model with view, routing the methods, validations/checking, worked on favorites and likes, user page, recent and most popular image galleries.

Warren: Integrated Devise and Paperclip gems to work with the project, worked with controller and view, wrote tests, organization of comments by likes/date posted.

Rails Proj2
-------------

This application requires:

- Ruby 2.1.2
- Rails 4.1.5

Instructions

For future reference of building a rails application
- /Gemfile must have sqlite3 in development and pg (postgres) in production
- /config/database.yml does not need to be changed
- /config/initializers/devise.rb config mailer_sender needs to be commented because it accesses a nil domain name

Steps:
0. gem install [gems]
1. git add and commit all your files
2. bundle install (to check, even though this step is already run in git push heroku master)
3. git push heroku master
4. heroku pg:reset DATABASE (resets, because rake db:create and rake db:reset are not allowed)
5. heroku run rake db:migrate
6. heroku run rake db:seed
