require_relative 'deck.rb'
require_relative 'wallet.rb'

class High_Low
  def initialize(wallet)
   @wallet = wallet
   @deck = Deck.new
   play
  end
  
  def play
    puts "How much do you want to wager?"
    wager = gets.strip.to_i
    if wager > 0 
      first_card = @deck.pull_card
      second_card = @deck.pull_card
      puts "The card is #{first_card}"
      print "(higher/lower): "
      guess = gets.strip.downcase
      puts "The second card is #{second_card}"
      if guess == 'higher'
        if is_correct = first_card.to_i <= second_card.to_i
          puts "You won!"
          @wallet.add_money(wager)
          puts "New bankroll balance: $#{@wallet.current_balance}"
          puts
          game_floor
        else
          puts "You lost!"
          @wallet.subtract_money(wager) if !is_correct
          puts "New bankroll balance: $#{@wallet.current_balance}"
          puts
          game_floor
        end
      else
        if is_correct = first_card.to_i > second_card.to_i
          puts "You won!"
          @wallet.add_money(wager)
          puts "New bankroll balance: $#{@wallet.current_balance}"
          puts
          game_floor
        else
          puts "You lost!"
          @wallet.subtract_money(wager) if !is_correct
          puts "New bankroll balance: $#{@wallet.current_balance}"
          puts
          game_floor
        end
      end
    else
      puts "*slowly escorted out of casino by armed guards, and asked to never return*"
      return
    end
  end



  def high_low_game
  @wallet.subtract_money(bid)
  
  end
end
