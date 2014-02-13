# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create({ :first_name => "Pipi" , :email => "Pipi@maya.com"})
puts "Success"

users = User.create({ :first_name => "Jimi" , :email => "jimi@jimi.com"})
puts "Success"

users = User.create({ :first_name => "Dudu" , :email => "dudu@dudu.com"})
puts "Success"

users = User.create({ :first_name => "Bubu" , :email => "bubu@bubu.com"})
puts "Success"

users = User.create({ :first_name => "Dodo" , :email => "dodo@dodo.com"})
puts "Success"


articles = Article.create({ :title => "Belajar Ruby" , :body => "Di WGS Bandung"})
puts "Success"

articles = Article.create({ :title => "Bandung" , :body => "Today's weather is good"})
puts "Success"

articles = Article.create({ :title => "Jalan Dago" , :body => "Blablabla"})
puts "Success"

articles = Article.create({ :title => "Rails" , :body => "Training Di WGS"})
puts "Success"

articles = Article.create({ :title => "Belajar html css" , :body => "Di Bandung"})
puts "Success"


comments = Comment.create({ :content => "Belajar ruby di Bandung"})
puts "Success"

comments = Comment.create({ :content => "Jalan-jalan"})
puts "Success"

comments = Comment.create({ :content => "Bagus juga"})
puts "Success"

comments = Comment.create({ :content => "Wasikkkkk"})
puts "Success"

comments = Comment.create({ :content => "Gitu ya?"})
puts "Success"


countries = Country.create({ :code => "Ms", :name => "Malaysia"})
puts "Success"

countries = Country.create({ :code => "Th", :name => "Thailand"})
puts "Success"

countries = Country.create({ :code => "Ph", :name => "Philippines"})
puts "Success"

countries = Country.create({ :code => "Vt", :name => "Vietnam"})
puts "Success"

countries = Country.create({ :code => "Bd", :name => "Brunei Darussalam"})
puts "Success"