namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    puts "----------------"
    puts "--- populate ---"
    puts "----------------"

    make_user_types
    make_user
    make_post
  end
end

def make_user_types

  puts "----------------"
  puts "-- UserTypes  --"
  puts "----------------"

	UserType.create!(name: "Admin")
	UserType.create!(name: "Registrado")
end

def make_user

  puts "----------------"
  puts "-- User  --"
  puts "----------------"

  admin = UserType.find_by_name("Admin")
  register = UserType.find_by_name("Registrado")

  User.create!(name: "Admin", email: "eximiusst@gmail.com", nickname: "Admin",
    password: "admin123", password_confirmation: "admin123", user_type: admin)

  User.create!(name: "User", email: "user@mail.com", nickname: "User",
    password: "user123", password_confirmation: "user123", user_type: register)
end


def make_post

  puts "----------------"
  puts "-- Post  --"
  puts "----------------"

  author1 = User.find_by_name("Admin")
  author2 = User.find_by_name("User")

  Post.create!(content: "Eximius Studio", date: "2013-05-02", title: "Eximius Studio",
    remote_image_url: "http://apps.co/media/uploads/special_learning.jpg", author: author1)

  Post.create!(content: "Eximius Studio 2", date: "2013-05-16", title: "Eximius Studio 2",
    remote_image_url: "http://apps.co/media/uploads/special_learning.jpg", author: author2)
end