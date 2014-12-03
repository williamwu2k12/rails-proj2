# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Cat.delete_all
Comment.delete_all

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Make other users
%w(WilliamWu NicStone WarrenTian).each do |name|
    User.create name: name, email: name+"@gmail.com", password: "password"
end

Cat.create user_id: User.where(:name => "WilliamWu").first.id, title: "Siamese", likes: 100, tag: "cute", image: File.open("#{Rails.root}/app/assets/images/Siamese.jpg")
Cat.create user_id: User.where(:name => "NicStone").first.id, title: "Persian", likes: 100, tag: "beautiful", image: File.open("#{Rails.root}/app/assets/images/Persian.jpg")
Cat.create user_id: User.where(:name => "WarrenTian").first.id, title: "Bengal", likes: 100, tag: "disgusting", image: File.open("#{Rails.root}/app/assets/images/Bengal.jpg")
Cat.create user_id: User.where(:name => "WilliamWu").first.id, title: "Burmese", likes: 100, tag: "terrifying", image: File.open("#{Rails.root}/app/assets/images/Burmese.jpg")
Cat.create user_id: User.where(:name => "NicStone").first.id, title: "Tabby", likes: 100, tag: "ugly", image: File.open("#{Rails.root}/app/assets/images/Tabby.jpg")
Cat.create user_id: User.where(:name => "WarrenTian").first.id, title: "Siberian", likes: 100, tag: "obese", image: File.open("#{Rails.root}/app/assets/images/Siberian.jpg")
Cat.create user_id: User.where(:name => "WilliamWu").first.id, title: "Manx", likes: 100, tag: "sexy", image: File.open("#{Rails.root}/app/assets/images/Manx.jpg")

Comment.create userid: User.where(:name => "WilliamWu").first.id, catid: Cat.where(:title => "Siamese").first.id, content: "I like big butts and I can not lie, you other brothers cant deny", likes: 10000
Comment.create userid: User.where(:name => "NicStone").first.id, catid: Cat.where(:title => "Siamese").first.id, content: "That when a girl walks in with an itty bitty waist", likes: -3
Comment.create userid: User.where(:name => "WarrenTian").first.id, catid: Cat.where(:title => "Siamese").first.id, content: "And a round thing in your face", likes: 0
Comment.create userid: User.where(:name => "WilliamWu").first.id, catid: Cat.where(:title => "Siamese").first.id, content: "Stop. Hammer time.", likes: 69

%w(abcdefg hijklmnop qrstu wxyz).each do |comment|
    Comment.create userid: User.where(:name => "NicStone").first.id, catid: Cat.where(:title => "Persian").first.id, content: comment, likes: 1
    Comment.create userid: User.where(:name => "WarrenTian").first.id, catid: Cat.where(:title => "Siberian").first.id, content: comment, likes: 1
end