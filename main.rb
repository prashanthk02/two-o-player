require_relative 'player'
require_relative 'game'

player1 = Player.new('Shan', 'S')
player2 = Player.new('Jhon', 'J')
players = [player1, player2]

game = Game.new
game.start_game(players)