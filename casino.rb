# --------------------------------------------------------------------------
# Start game player has a name and an initial bankroll
def welcome_screen
  puts "Welcome to DPL Casino! Enter at your own risk!"
  puts "What is your name?"
  user_input = gets.strip
  puts "Welcome, #{user_input}!"
  puts "Shall we play a game? How much money would you like to play with today?"
  user_bankroll = gets.strip.to_i
  puts "Big money! Your starting bankroll is: $#{user_bankroll}"
  puts "What do you want to play?"
  game_floor
end


# --------------------------------------------------------------------------
# Player can go to different games via menu
def game_floor
  puts "1. Blackjack / 21"
  puts "2. Roulette"
  puts "3. War"
  user_input = gets.strip.to_i
  if user_input == 1
    puts "Blackjack game" #@blackjack
  elsif user_input == 2
    puts "Roulette game" #@roulette
  elsif user_input == 3
    puts "War game" #@war
  else 
    puts "Invalid input. Please choose 1, 2, or 3."
    game_floor
  end
end


# --------------------------------------------------------------------------
# Player places bet and wins or loses (hint: rand)




# --------------------------------------------------------------------------
# Player's bankroll goes up and down with wins and losses







welcome_screen