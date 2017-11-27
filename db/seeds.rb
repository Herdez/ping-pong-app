board1_user1 = Board.create(name: "inigo", score: 52, games: 2)
board2_user2 = Board.create(name: "edrizio", score: 13, games: 2)
board3_user3 = Board.create(name: "herdez", score: 21, games: 1)

puts "-- Added 3 boards to your database"

user1 = User.create!(email: "inigo@regalii.com", password: 'secret123', board_id: board1_user1.id)
user2 = User.create!(email: "edrizio@regalii.com", password: 'secret123', board_id: board2_user2.id)
user3 = User.create!(email: "herdez@gmail.com", password: 'herdezherdez', board_id: board3_user3.id)


puts "-- Added 2 users to your database"

game1 = Game.create(name: "ping pong papas")
game2 = Game.create(name: "ping pong papotas")
game3 = Game.create(name: "ping pong papita")

puts "-- Added 2 games to your database"

round1_user1_game1 = Round.create(user_id: user1.id, game_id: game1.id, score: 21, date: Time.new.strftime("%Y-%m-%d"))
round2_user2_game1 = Round.create(user_id: user2.id, game_id: game1.id, score: 8, date: Time.new.strftime("%Y-%m-%d"), status: true)

round3_user1_game2 = Round.create(user_id: user1.id, game_id: game2.id, score: 21, date: Time.new.strftime("%Y-%m-%d"))
round4_user2_game2 = Round.create(user_id: user2.id, game_id: game2.id, score: 5, date: Time.new.strftime("%Y-%m-%d"), status: true)

round5_user1_game3 = Round.create(user_id: user1.id, game_id: game3.id, score: 10, date: Time.new.strftime("%Y-%m-%d"))
round6_user3_game3 = Round.create(user_id: user3.id, game_id: game3.id, score: 21, date: Time.new.strftime("%Y-%m-%d"), status: true)


puts "-- Added 6 rounds to your database"




