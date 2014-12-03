# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

%w(UCB UCSD UCSB UCI UCLA).each do |name|
  Cat.create title: name, likes: 10, tag: 'YOLO', 
end

# Make other users
%w(Ash Gary Misty Brock).each do |name|
  User.create name: name, email: name+"@catpics.com", password: 'password'
end