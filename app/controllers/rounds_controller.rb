class RoundsController < ApplicationController
  def create
  	name = params[:log][:name]
  	date_played = params[:log][:date]
  	opponent = params[:log][:opponent]
  	your_score = params[:log][:your_score]
  	their_score = params[:log][:their_score]
    
    #new game created
  	game = Game.create
    #looking id opponent by email
    opponent = User.find_by(email: opponent)
    #new rounds created
  	round1 = Round.create(user_id: current_user.id, game_id: game.id, score: your_score, date: date_played)
  	round2 = Round.create(user_id: opponent.id, game_id: game.id, score: their_score, date: date_played, status: true)
    #board updated
    board1 = Board.find_by(name: current_user.email)
    board2 = Board.find_by(name: opponent.email)
    if board1 
      board1.score += your_score.to_i
      board1.games += 1
      board1.save
    end
    if board2
      board2.score += their_score.to_i
      board2.games += 1
      board2.save
    end
    redirect_to log_path
  end
end


