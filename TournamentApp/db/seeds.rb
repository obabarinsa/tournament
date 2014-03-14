# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


all_event_data = [ {:event => "Ultimate Fighting Game Tournament 10",
					:game => "Super Street Fighter 4: Arcade Edition v. 2012",
					:rules => "Default settings. 2 out of 3 games. At either player’s request, matches will be played on the training stage. This request must be made before the match starts. Loser may change character/ultra. Winner may change ultra after the loser changes characters, but before he selects his ultra.",
					:image => "http://cdn.dualshockers.com/wp-content/uploads/2011/11/SSF4AE-v2012.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Ultimate Marvel vs. Capcom 3",
					:rules => "Default settings, except Auto Super Jump which will be set to OFF. 3 out of 5 games. At either player’s request, matches will be played on the Bonne Wonderland stage. This request must be made before the match starts. Loser may change characters/assists. Winner cannot change characters or assists. Both players may alter their order by holding A1 or A2 during loading.",
					:image => "http://4.bp.blogspot.com/-vMKl4wIoqJI/T_9sspFkOXI/AAAAAAAAAHM/GgYouPIQoJc/s640/umvc3logo.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "BlazBlue: Chrono Phantasma",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://i2.wp.com/shoryuken.com/wp-content/uploads/2013/03/blazblue-bbcp-frontpage.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Injustice: Gods Among Us",
					:rules => "2 out of 3 games, default settings. Batgirl is banned. We are using the 5/21/13 balance batch. Stage selection will be handled by the game’s rules exclusively, meaning that every match both players get to choose a stage and the game will 50/50.",
					:image => "http://multiplayerblog.mtv.com//wp-content/uploads/multi/2013/04/INJMain.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Guilty Gear XX Accent Core+R",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://shoryuken.com/wp-content/uploads/2012/12/ggxxac+r-logo.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "King of Fighters XIII",
					:rules => "Default settings, 2 out of 3 games. Winner can change order on the order select screen if he wishes.",
					:image => "http://dreamcancel.com/wiki/images/8/84/Xiii_logo.png"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Super Smash Bros. Melee",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://thegamersarena.com/w/wp-content/uploads/2010/12/super-smash-bros-melee.417237-1.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Project M 3.0",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://www.ssb-experience.com/wp-content/uploads/2013/12/news-project-m-version-3-0.png"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Tekken Tag Tournament 2",
					:rules => "3/5 rounds, other settings on default. 2 out of 3 games. Stage selection is random.",
					:image => "http://images4.fanpop.com/image/photos/23100000/TTT2-tekken-tag-tournament-2-23174655-1920-1080.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Killer Instinct",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://upload.wikimedia.org/wikipedia/en/d/db/Killer_instinct_(2013)_logo.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Divekick Addition Edition",
					:rules => "2 out of 3 games, default settings. Loser may change character/gem. Winner may change gem after the loser changes characters, but before he selects his gem.",
					:image => "http://i1.wp.com/shoryuken.com/wp-content/uploads/2014/02/divekick-logo-dojo-622.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Skullgirls Encore",
					:rules => "Default settings. 2 out of 3 games.",
					:image => "http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/autumngames/revergelabs/skullgirls/encore/skullgirlsencore_610.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Vampire Savior",
					:rules => "2 out of 3 games, default settings, turbo 3. Players must select Turbo speed.",
					:image => "http://upload.wikimedia.org/wikipedia/fr/7/74/Vampire_Savior_The_Lord_of_Vampire_Logo.png"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Soul Calibur V",
					:rules => "3/5 rounds, other settings on default. 2 out of 3 games. Soul of Devil Jin is banned. Stage selection is random.",
					:image => "http://www.gamedot.co.uk/media/2012/03/SoulcaliburV.jpg"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Street Fighter x Tekken",
					:rules => "Default settings, 2 out of 3 games.  Default gem sets only. At either player’s request, the Half Pipe stage will used.",
					:image => "http://static4.wikia.nocookie.net/__cb20120316074952/streetfighter/images/1/11/Street-Fighter-X-Tekken-Logo.png"
					},
					{:event => "Ultimate Fighting Game Tournament 10",
					:game => "Mortal Kombat 9",
					:rules => "Default Settings, 2 out of 3 games. Kratos is banned. Street stage and Kratos stage are banned; Courtyard (Daytime) will be used if either player requests it.  Kombat Kodes are banned except NO BLOOD code.",
					:image => "http://mortarandpistol.files.wordpress.com/2011/09/mk9cover.jpg"
					}# },
					# {:event => "Ultimate Fighting Game Tournament 10",
					# :game => "Mystery Game Tournament",
					# :image => "http://ufgtus.files.wordpress.com/2013/12/ufgt10.png"
					# }# ,
					# {:event => "Ultimate Fighting Game Tournament 10: X (UFGT10)",
					# :game => "Ultimate Marvel vs. Capcom 3 Ban Tournament (UMvCX)",
					# :image => "http://4.bp.blogspot.com/-vMKl4wIoqJI/T_9sspFkOXI/AAAAAAAAAHM/GgYouPIQoJc/s640/umvc3logo.jpg"
					# }
				]

Event.destroy_all
all_event_data.each do |event_info|
	e = Event.new
	e.event = event_info[:event]
	e.game = event_info[:game]
	e.rules = event_info[:rules]
	e.image = event_info[:image]
	e.save
end

# all_tournament_data = [ {:game => "Super Street Fighter 4: Arcade Edition v. 2012"
# 					   	},
# 					   	{:game => "Ultimate Marvel vs. Capcom 3"
# 					   	},
# 					   	{:game => "BlazBlue: Chrono Phantasma"
# 					   	},
# 					   	{:game => "Injustice: Gods Among Us"
# 					   	},
# 					   	{:game => "Guilty Gear XX Accent Core+R"
# 					   	},
# 					   	{:game => "King of Fighters XIII"
# 					   	},
# 					   	{:game => "Super Smash Bros. Melee"
# 					   	},
# 					   	{:game => "Project M 3.0"
# 					   	},
# 					   	{:game => "Tekken Tag Tournament 2"
# 					   	},
# 					   	{:game => "Killer Instinct"
# 					   	},
# 					   	{:game => "Divekick Addition Edition"
# 					   	},
# 					   	{:game => "Skullgirls Encore"
# 					   	},
# 					   	{:game => "Vampire Savior"
# 					   	},
# 					   	{:game => "Soul Calibur V"
# 					   	},
# 					   	{:game => "Street Fighter x Tekken"
# 					   	},
# 					   	{:game => "Mortal Kombat 9"
# 					   	}# ,
# 					   	# {:game => "Mystery Game Tournament (MYST)",
# 					   	# :rules => "Default button settings unless otherwise instructed. Controllers will be provided. Number of matches in a set will vary. A different game will be played every round of the tournament (Winners 1 is all GameX, while Losers 2 is all GameY, etc). Every pool will have different games.  The Top 8 series for this tournament will be spread out over Sunday May 27th, so participants who advance need to be around when scheduled. No use of cell phones, smartphones, tablets, or laptops is allowed during your pool. Coaching is discouraged."
# 					   	# }# ,
# 					   	# {:game => "Ultimate Marvel vs. Capcom 3 Ban Tournament (UMvCX)",
# 					   	# :rules => ""
# 					   	# }
# 					]

# Tournament.destroy_all
# all_tournament_data.each do |tournament_info|
#   Tournament.create(:game => tournament_info[:game])
# end


# Tournament.destroy_all
# all_tournament_data.each do |tournament_info|
# 	t = Tournament.new
# 	t.game = tournament_info[:game]
# 	t.rules = tournament_info[:rules]
# 	t.save
# end

# all_player_data = [{:name => "Adam Heart",
# 					:gamertag => "Keits",
# 					:address => "Chicago, IL"},
# 					{:name => "Eric Koerting",
# 					:gamertag => "Special K",
# 					:address => "Melrose Park, IL"},
# 					{:name => "Eli Curry",
# 					:gamertag => "L.O.V.E. BodyWeightCreed",
# 					:address => "Indianapolis, IN"},
# 					{:name => "Alex Acosta",
# 					:gamertag => "Double A",
# 					:address => "West Lafayette, IN"},
# 					{:name => "Braden Pikes-king",
# 					:gamertag => "Bapk13 ",
# 					:address => "Berkeley, IL"},
# 					{:name => "Jay Hartford",
# 					:gamertag => "Hologram Gootecks",
# 					:address => "Chesterton, IN"},
# 					{:name => "Ryan Cassidy",
# 					:gamertag => "Ryanbomber",
# 					:address => "Somerville, MA"},
# 					{:name => "Brian Coia",
# 					:gamertag => "Red Coin",
# 					:address => "Antioch, IL"},
# 					{:name => "Charles Jones",
# 					:gamertag => "Caj814",
# 					:address => "Chicago, IL"},
# 					{:name => "John Conway",
# 					:gamertag => "FOGE",
# 					:address => "Park Ridge, IL"}
# 				]

# Player.destroy_all
# all_player_data.each do |player_info|
#   Player.create(:name => player_info[:name], :gamertag => player_info[:gamertag], :address => player_info[:address])
# end

# all_pool_data = [{:game => "Skullgirls Encore (SG)",
# 				:gamertag => "Bapk13",
# 				:ranking => 1,
# 				:pool_group => 1
# 				},
# 				{:game => "Vampire Savior (VS)",
# 				:gamertag => "Ryanbomber",
# 				:ranking => 1,
# 				:pool_group => 2
# 				},
# 				{:game => "Skullgirls Encore (SG)",
# 				:gamertag => "Keits",
# 				:ranking => 2,
# 				:pool_group => 1
# 				},
# 				{:game => "Vampire Savior (VS)",
# 				:gamertag => "FOGE",
# 				:ranking => 2,
# 				:pool_group => 2
# 				},
# 				{:game => "Skullgirls Encore (SG)",
# 				:gamertag => "Red Coin",
# 				:ranking => 3,
# 				:pool_group => 1
# 				},
# 				{:game => "Mortal Kombat 9 (MK9)",
# 				:gamertag => "Keits",
# 				:ranking => 3,
# 				:pool_group => 2
# 				},
# 				{:game => "Mortal Kombat 9 (MK9)",
# 				:gamertag => "Red Coin",
# 				:ranking => 4,
# 				:pool_group => 1
# 				},
# 				{:game => "Mortal Kombat 9 (MK9)",
# 				:gamertag => "Special K",
# 				:ranking => 4,
# 				:pool_group => 2
# 				},
# 				{:game => "Project M 3.0 (PM)",
# 				:gamertag => "Bapk13",
# 				:ranking => 5,
# 				:pool_group => 1
# 				},
# 				{:game => "Project M 3.0 (PM)",
# 				:gamertag => "Ryanbomber",
# 				:ranking => 5,
# 				:pool_group => 2
# 				}
# 			]

# Pool.destroy_all
# all_pool_data.each do |pool_info|
#   Pool.create(:game=> pool_info[:game], :gamertag => pool_info[:gamertag], :ranking => pool_info[:ranking], :pool_group => pool_info[:pool_group])
# end
# seed file, only reads seed data not all data entered in rails console 
require 'csv'    

csv_text = File.read('/Users/Bolie/Dropbox/CSPP/Winter 2014/Web Dev/git.projects/obabarinsa.github.io/obabarinsa/tournament/character file/character_seed.csv')
csv = CSV.parse(csv_text, :headers => true)
Character.destroy_all
csv.each do |row|
  Character.create!(row.to_hash)
end


all_game_data = [ 	{:name => "Super Street Fighter 4",
					:rules => "Default settings. 2 out of 3 games. At either player’s request, matches will be played on the training stage. This request must be made before the match starts. Loser may change character/ultra. Winner may change ultra after the loser changes characters, but before he selects his ultra.",
					:image => "http://cdn.dualshockers.com/wp-content/uploads/2011/11/SSF4AE-v2012.jpg"
					},
					{:name => "Ultimate Marvel vs. Capcom 3",
					:rules => "Default settings, except Auto Super Jump which will be set to OFF. 3 out of 5 games. At either player’s request, matches will be played on the Bonne Wonderland stage. This request must be made before the match starts. Loser may change characters/assists. Winner cannot change characters or assists. Both players may alter their order by holding A1 or A2 during loading.",
					:image => "http://4.bp.blogspot.com/-vMKl4wIoqJI/T_9sspFkOXI/AAAAAAAAAHM/GgYouPIQoJc/s640/umvc3logo.jpg"
					},
					{:name => "BlazeBlue: Chrono",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://i2.wp.com/shoryuken.com/wp-content/uploads/2013/03/blazblue-bbcp-frontpage.jpg"
					},
					{:name => "Injustice",
					:rules => "2 out of 3 games, default settings. Batgirl is banned. We are using the 5/21/13 balance batch. Stage selection will be handled by the game’s rules exclusively, meaning that every match both players get to choose a stage and the game will 50/50.",
					:image => "http://multiplayerblog.mtv.com//wp-content/uploads/multi/2013/04/INJMain.jpg"
					},
					{:name => "Guilty Gear Core R",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://shoryuken.com/wp-content/uploads/2012/12/ggxxac+r-logo.jpg"
					},
					{:name => "King of Fighters XIII",
					:rules => "Default settings, 2 out of 3 games. Winner can change order on the order select screen if he wishes.",
					:image => "http://dreamcancel.com/wiki/images/8/84/Xiii_logo.png"
					},
					{:name => "SSB Melee",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://thegamersarena.com/w/wp-content/uploads/2010/12/super-smash-bros-melee.417237-1.jpg"
					},
					{:name => "Project M 3.0",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://www.ssb-experience.com/wp-content/uploads/2013/12/news-project-m-version-3-0.png"
					},
					{:name => "Tekken Tag 2",
					:rules => "3/5 rounds, other settings on default. 2 out of 3 games. Stage selection is random.",
					:image => "http://images4.fanpop.com/image/photos/23100000/TTT2-tekken-tag-tournament-2-23174655-1920-1080.jpg"
					},
					{:name => "Killer instinct",
					:rules => "Double Elimination, 2 out of 3 games",
					:image => "http://upload.wikimedia.org/wikipedia/en/d/db/Killer_instinct_(2013)_logo.jpg"
					},
					{:name => "Divekick",
					:rules => "2 out of 3 games, default settings. Loser may change character/gem. Winner may change gem after the loser changes characters, but before he selects his gem.",
					:image => "http://i1.wp.com/shoryuken.com/wp-content/uploads/2014/02/divekick-logo-dojo-622.jpg"
					},
					{:name => "Skullgirls Encore",
					:rules => "Default settings. 2 out of 3 games.",
					:image => "http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/autumngames/revergelabs/skullgirls/encore/skullgirlsencore_610.jpg"
					},
					{:name => "Vampire Savior",
					:rules => "2 out of 3 games, default settings, turbo 3. Players must select Turbo speed.",
					:image => "http://upload.wikimedia.org/wikipedia/fr/7/74/Vampire_Savior_The_Lord_of_Vampire_Logo.png"
					},
					{:name => "Soul Calibur V",
					:rules => "3/5 rounds, other settings on default. 2 out of 3 games. Soul of Devil Jin is banned. Stage selection is random.",
					:image => "http://1.bp.blogspot.com/-i1UV33GRCVo/TkvjREofjJI/AAAAAAAAB2I/atJW2498V-E/s1600/072411_SCV.jpg"
					},
					{:name => "Street Fighter X Tekken",
					:rules => "Default settings, 2 out of 3 games.  Default gem sets only. At either player’s request, the Half Pipe stage will used.",
					:image => "http://static4.wikia.nocookie.net/__cb20120316074952/streetfighter/images/1/11/Street-Fighter-X-Tekken-Logo.png"
					},
					{:name => "Mortal Kombat 9",
					:rules => "Default Settings, 2 out of 3 games. Kratos is banned. Street stage and Kratos stage are banned; Courtyard (Daytime) will be used if either player requests it.  Kombat Kodes are banned except NO BLOOD code.",
					:image => "http://mortarandpistol.files.wordpress.com/2011/09/mk9cover.jpg"
					}
				]

Game.destroy_all
all_game_data.each do |game_info|
	g = Game.new
	g.name = game_info[:name]
	g.rules = game_info[:rules]
	g.image = game_info[:image]
	g.save
end