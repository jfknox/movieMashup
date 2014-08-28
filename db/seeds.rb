# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posters = Poster.create([{image_url:"http://cdn.mos.totalfilm.com/images/e/et-alien.jpg", user_id:"1", blurb:"This alien eats more than Reeses Pieces", title1:"E.T.", title2:"Alien", mash_title:"A.L.I.E.N"},
	{image_url:"http://www.bitrebels.com/wp-content/uploads/2011/10/Star-Wars-Mashup-Movie-Posters-8.jpg", user_id:"2", blurb:"Po, I am your father!", title1:"Star Wars", title2:"Kung Fu Panda", mash_title:"Panda Wars"},
	{image_url:"http://www.empireonline.com/images/features/movie-poster-mash-up/muppets/1.jpg", user_id:"1", blurb:"Don't take my cookies!!", title1:"One Flew Over The Cukoo's Nest", title2:"Sesame Street", mash_title:"One Flew Over The Cookies Nest"}])

stories = Story.create([{title1:"Toy Story", title2:"Terminator", mash_title:"Toyminator", content:"Pitchfork pop-up art party, aesthetic distillery Marfa Echo Park mixtape mumblecore. Mustache asymmetrical quinoa Pitchfork leggings, ethical aesthetic banjo mumblecore Tonx hashtag umami Echo Park fixie chillwave. Banh mi Portland Carles, bespoke mixtape distillery wayfarers retro shabby chic ugh Intelligentsia 3 wolf moon 90's kitsch. Lo-fi literally yr, next level sustainable pop-up +1 Cosby sweater keytar photo booth PBR&B quinoa gluten-free squid. Cosby sweater kitsch ugh banjo McSweeney's wolf. Intelligentsia Bushwick 8-bit gluten-free. Dreamcatcher sustainable lomo, biodiesel blog 90's Odd Future Vice.", user_id:"2"},
	{title1:"Indiana Jones", title2:"Bridget Jones' Diary", mash_title:"Indiana Jones' Diary", content:"Ennui direct trade fingerstache drinking vinegar Marfa stumptown Helvetica. Post-ironic Intelligentsia +1 Godard Kickstarter distillery. Bicycle rights locavore twee, McSweeney's pop-up 8-bit four loko mumblecore chambray. Next level master cleanse hoodie, pork belly plaid mumblecore food truck scenester. Single-origin coffee Helvetica Pinterest, wayfarers art party VHS fanny pack biodiesel keytar four loko twee Wes Anderson. Crucifix tousled fixie, disrupt umami cred beard leggings wayfarers 3 wolf moon Pinterest chillwave banh mi. Chillwave Intelligentsia art party, XOXO direct trade jean shorts DIY twee bespoke gastropub High Life letterpress biodiesel.", user_id:"1"},
	{title1:"Alice in Wonderland", title2:"Zombieland", mash_title:"Alice in Zombieland", content:"Williamsburg Pitchfork before they sold out hoodie, readymade four loko PBR&B post-ironic vinyl freegan kogi mumblecore selvage normcore. Small batch street art jean shorts synth squid. Sustainable fingerstache you probably haven't heard of them direct trade try-hard post-ironic, cray synth chillwave. Try-hard pickled sustainable iPhone craft beer Tumblr. PBR&B try-hard meggings, meh blog whatever chia pickled gluten-free High Life XOXO McSweeney's. 3 wolf moon shabby chic post-ironic, High Life kitsch 8-bit Pitchfork small batch organic hashtag typewriter. Pickled Pinterest salvia banjo.", user_id:"1"}])