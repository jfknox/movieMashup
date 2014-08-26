# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posters = Poster.create([{image_url:"http://www.empireonline.com/images/features/movie-poster-mash-up/muppets/1.jpg", user_uid:"1", blurb:"Is the monster crazy? Or is the system crazy for keeping him from his cookies?", title1:"One Flew Over the Cuckoos Nest", title2:"Sesame Street", mash_title:"One Flew Over The Cookies Nest"},
	{image_url:"http://d2tq98mqfjyz2l.cloudfront.net/image_cache/1365887294134209.jpg", user_uid:"1", blurb:"The bounty hunter has been released!", title1:"Django Unchained", title2:"Star Wars", mash_title:"Jango Unchained"},
	{image_url:"http://31.media.tumblr.com/NMYkoW4n5q0m7h3xj3rDlh8Ro1_400.jpg", user_uid:"1", blurb:"This Alien eats more than Reeses Pieces", title1:"E.T.", title2:"Alien", mash_title:"A.L.I.E.N"}])

stories = Story.create([{title1:"", title2:"", mash_title:"", content:"", user_uid:""},
	{title1:"", title2:"", mash_title:"", content:"", user_uid:""},
	{title1:"", title2:"", mash_title:"", content:"", user_uid:""}])