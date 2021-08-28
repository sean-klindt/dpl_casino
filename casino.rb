require_relative 'wallet.rb'
    require_relative 'roulette.rb'
    require_relative 'blackjack.rb'
    require_relative 'war.rb'

    # --------------------------------------------------------------------------
    # Start game player has a name and an initial bankroll
    def welcome_screen
      puts render_ascii_art
      puts "Welcome to DPL Casino! Enter at your own risk!"
      puts "What is your name?"
      user_input = gets.strip
      puts "Welcome, #{user_input}!"
      puts "Shall we play a game? How much money would you like to play with today?"
      money = gets.strip.to_i
      @wallet = Wallet.new(money)
      if @wallet.validate_money(money)
        puts "Big money! Your starting bankroll is: $#{@wallet.current_balance}"
        puts "What do you want to play?"
        game_floor
      else puts "Invalid amount. Try again."
        welcome_screen
      end
    end

    def render_ascii_art
      File.readlines("dice_art.txt") do |line|
        puts line
      end
    end

    # --------------------------------------------------------------------------
    # Player can go to different games via menu
    def game_floor
      puts "1. Blackjack / 21"
      puts "2. Roulette"
      puts "3. War"
      user_input = gets.strip.to_i
      if user_input == 1
        puts "Blackjack" #@blackjack = Blackjack.new(@wallet)
      elsif user_input == 2
        puts "Roulette" #@roulette = Roulette.new(@wallet)
      elsif user_input == 3
        puts "War" #@War = War.new(@wallet)
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