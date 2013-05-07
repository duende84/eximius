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

  type = UserType.find_by_name("Admin")

  User.create!(name: "Admin", email: "eximiusst@gmail.com", nickname: "Admin",
    password: "admin123", password_confirmation: "admin123", user_type: type)
end


def make_post

  puts "----------------"
  puts "-- Post  --"
  puts "----------------"

  Post.create!(content: "Eximius Studio", date: "2013-05-02", title: "Eximius Studio",
    remote_image_url: "http://apps.co/media/uploads/special_learning.jpg")
end