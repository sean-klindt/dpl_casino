# require_relative 'dice_game.rb'
require_relative 'wallet.rb'
require_relative 'blackjack.rb'
require_relative 'high_low.rb'

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
        puts
        puts "Big money! Your starting bankroll is: $#{@wallet.current_balance}"
        puts "What would you like to do now?"
        main_menu
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
    def main_menu
      puts "----------------"
      puts "1. Play a Game"
      puts "2. Add Money"
      puts "3. Exit Casino"
      user_input = gets.strip.to_i
      if user_input == 1
        game_floor
      elsif user_input == 2
        puts
        puts "How much money would you like too add?"
        money = gets.strip.to_i
        if @wallet.validate_money(money)
          @wallet.add_money(money)
          puts "Higher risks = higher rewards! Your bankroll is now: $#{@wallet.current_balance}"
          main_menu
          else puts "Invalid amount. Try again."
          main_menu
        end
      elsif user_input == 3
        puts "Thanks for visiting DPL Casino!"
        exit
      end
    end
    
    def game_floor
      puts "----GAME FLOOR----"
      puts "1. Blackjack / 21"
      puts "2. Dice"
      puts "3. High/Low"
      puts "4. Return to Main Menu"
      user_input = gets.strip.to_i
      if user_input == 1
        Blackjack.new(@wallet)
      elsif user_input == 2
        Dice_Game.new(@wallet)
      elsif user_input == 3
        High_Low.new(@wallet)
      elsif user_input == 4
        main_menu
      else 
        puts "Invalid input. Please choose 1, 2, 3, 4, or 5."
        game_floor
      end
    end


    # --------------------------------------------------------------------------
    # Player places bet and wins or loses (hint: rand)

    # --------------------------------------------------------------------------
    # Player's bankroll goes up and down with wins and losses


welcome_screen
