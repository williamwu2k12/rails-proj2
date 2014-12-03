Rails Proj2
-------------

Title: Cats

Team Members: William Wu, Nic Stone, Warren Tian

Demo Link: ???????????????

Idea: A web application where users can create accounts, post, and view pictures of cats.

Models and Description:
User
- has name, email, and possesses Cat objects and Comment objects
Cat
- has title, tag, likes, and Comment objects, and belongs to the uploader
Comment
- has likes and content, and belongs to both the Cat it's about and also the writer of the comment

Features:
- users can create an account and login
- users can upload pictures and post them to the gallery for the public to see
- users can view pictures posted by other users and comment on them and vote on them
- users can vote on the comments

Division of Labor:
We quickly realized that we didn't really like using github for a Rails project (since it's not simply changing one text file), so we decided not to use github as much because of the merge conflicts. Instead, we had one person "driving" (writing the code), one person advising the driver, and one person doing the web research for the current idea we were implementing. We pushed at moments when the code seemed stable. Sometimes when we got stuck on a bug, we all pulled and split to try to fix the bug. We rotated driving, advising, and researching every once in a while. Our general contributions, however, are:

William: Implemented seeds, created general structure of model, did lots of useful debugging.
Nic: Worked with connecting model with view, routing the methods, validations/checking, and testing.
Warren: Integrated Devise and Paperclip gems to work with the project, worked with controller and view.


Rails Proj2
-------------

This application requires:

- Ruby 2.1.2
- Rails 4.1.5

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
