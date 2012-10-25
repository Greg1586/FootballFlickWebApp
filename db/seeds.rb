# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
video1 = Video.create( icon:'tutorial1.jpg', title:'video 1', description:'description for video1');
video1.save;

video2 = Video.create( icon:'tutorial1.jpg', title:'video 1', description:'description for video1');
video2.save;

video3 = Video.create( icon:'tutorial1.jpg', title:'video 1', description:'description for video1');
video3.save;

video4 = Video.create( icon:'tutorial1.jpg', title:'video 1', description:'description for video1');
video4.save;