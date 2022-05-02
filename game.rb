require_relative 'player'
require_relative 'question'

class Game

  def start_game(players)
    puts "----- New Turn -----"
    question_1 = Question.new
    puts "#{players[0].tag}: #{question_1.print_question}"
    print "> "
    result = $stdin.gets.chomp
    
    if result.to_i == question_1.num1 + question_1.num2
      puts "#{players[0].tag}: YES! You are correct."
    else
      players[0].wrong_ans
      puts "#{players[0].tag}: NO! You are wrong."
    end

    if players[0].lives == 0
      puts "#{players[1].tag} wins with a score of #{players[1].curr_lives}"
      puts
      puts "(_^-^_) GAME OVER (_^-^_)"
      puts
    else
      puts "#{players[0].initials}: #{players[0].curr_lives} vs #{players[1].initials}: #{players[1].curr_lives}"
      players.reverse!
      start_game(players)
    end
  end
end