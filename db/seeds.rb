# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user =User.create :email => 'ander.pp@gmail.com', 
                  :password => '123qwe',
                  :password_confirmation => '123qwe'

user.articles.create :title => 'Advanced Active Record',
  :body => "Models nedd to relate to each other. In the rela world, ..",
  :published_at => Date.today
user.articles.create :title => 'One-to-many assossiations',
  :body => "One-to-many assossiations describe a pattern ..",
  :published_at => Date.today
user.articles.create :title => 'Assossiantions',
  :body => "Active Record makes working with assossiation easy ..",
  :published_at => Date.today

Category.create [{:name => 'Programing'},
  {:name => 'Movie'},
  {:name => 'Music'},
  {:name => 'Event'},
  {:name => 'Travel'}]