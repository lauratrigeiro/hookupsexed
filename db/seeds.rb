# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(alias: "pinkbunny", role: "user")
User.create!(alias: "kristy", role: "sexpert")

Conversation.create!(sender_id: 1, recipient_id: 2)

con = Conversation.first
con.messages.create!(user: User.find(1), body: "I’m worried my gf and I were having sex and my condom broke. What should I do?")
con.messages.create!(user: User.find(2), body: "That’s super stressful; I’m sorry to hear about that! Don’t panic. 
	Your partner can consider Plan B. You can buy it over the counter at a local drug store if you are 15 years or older. 
	Are you 15? It costs about $50. The pill needs to be taken as soon as possible to work. 
Do you have any other questions about price or Plan B? You and your partner should get 
tested for STIs too if you haven’t recently been tested.")
