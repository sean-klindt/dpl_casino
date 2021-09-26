require_relative 'wallet.rb'
require_relative 'deck.rb'
require_relative 'hand.rb'
# require_relative 'casino.rb'

class Blackjack
  def initialize(wallet)
   @wallet = wallet
   @deck = Deck.new
   play
  end


  def play
    puts "How much would you like to bet?"
    bet = gets.chomp.to_i
    while  bet > @wallet.current_balance || bet < 1
    puts "Insufficient funds."
    bet = gets.chomp.to_i
    end

    deck = Deck.new
    hand = Hand.new
    deck.shuffle_cards
    hand.hit(deck.deal)
    hand.hit(deck.deal)

    computer = Hand.new
    computer.hit(deck.deal)
    computer.hit(deck.deal)

    puts "Hand value:#{hand.hand_value}"
    puts "Opponent value:#{computer.hand_value}"
    response = "h"
    while response == "h"
      puts "Press h for hit or s stay."
      response = gets.strip
    case response
      when "h"
        hand.hit(deck.deal)
        puts "Hand value:#{hand.hand_value}"
      break if hand.hand_value > 21
      when "s"
        puts "You selected to stay."
      end
    end

    puts "Hand value:#{hand.hand_value}"
      if hand.hand_value > 21
        puts "You busted!"
      elsif hand.hand_value == 21
        puts "You got Blackjack!"
      end
    while computer.hand_value < 17
      computer.hit(deck.deal)
    end
    puts "Computer value:#{computer.hand_value}"
    if hand.hand_value > computer.hand_value && hand.hand_value <= 21
      puts "You have won!"
      @wallet.add_money(bet)
    elsif hand.hand_value <= 21 && computer.hand_value > 21
      puts "You have won!"
      @wallet.add_money(bet)
    else
      puts "The computer has won."
      @wallet.subtract_money(bet)
  end
game_floor
end

end

