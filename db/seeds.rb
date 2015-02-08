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
con.messages.create!(user: User.find(1), body: "I’m a 16 year old girl and have never had an orgasm. I’ve been having sex with my boyfriend for a year.")
con.messages.create!(user: User.find(2), body: "Don’t worry that’s pretty common. Do you masturbate? Many women who haven’t had an orgasm don’t masturbate. You’ve got to figure out what feels good to you before you can tell your boyfriend. Masturbating is totally normal, fun, and relaxing. You can use your hand or purchase a vibrator. You’re most likely to have an orgasm from your clitoris. It’s a small nodule near the top of your labia (the folds/lips). Massage your clitoris gently and increase speed and pressure. You’ll need consistent touch to reach an orgasm. This can take more than 20 minutes. Relax and explore!")
