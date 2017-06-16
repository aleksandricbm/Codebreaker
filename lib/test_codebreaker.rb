require_relative 'codebreaker'

ui = UI.new
ui.enter_name

game = Codebreaker::Game.new
game.start

for i in 1..3
  puts "\n\n"
  ui.enter_number
  ui.game_result(game.attempt(ui.user_number))
  game.save? if game.won?(ui.user_number)
end


