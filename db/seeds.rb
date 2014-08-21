# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posters = Poster.create([{image_url:"", user_uid:"", blurb:"", title1:"", title2:"", mash_title:""},
	{image_url:"", user_uid:"", blurb:"", title1:"", title2:"", mash_title:""},
	{image_url:"", user_uid:"", blurb:"", title1:"", title2:"", mash_title:""}])

stories = Story.create([{title1:"", title2:"", mash_title:"", content:"", user_uid:""},
	{title1:"", title2:"", mash_title:"", content:"", user_uid:""},
	{title1:"", title2:"", mash_title:"", content:"", user_uid:""}])