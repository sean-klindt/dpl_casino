class Blackjack
  def initialize(wallet)
   @wallet = wallet
  end

  def blackjack_game
  @wallet.subtract_money(bid)

  end
end

#--------------------------------------------------
# require_relative 'card'
# require_relative 'player'
# require_relative 'deck'
# require_relative 'hand'
# require_relative 'wallet'


# class Casino
#   def initialize
#     @player = Player.new
#     show_menu
#   end
#   def show_menu
#     puts "What game would you like to play?"
#     puts "1. Roulette"
#     puts "2. High / Low"
#     puts "3. Blackjack"
#     puts "4. Check Wallet"
#     puts "5. Exit"
#     response = gets.strip.to_i
#     case response
#       when 1
#         # Roulette
#       when 2
#         # High / Low
#       when 3
#         play_blackjack
#       when 4
#         puts "You have $#{@player.wallet.current_balance}!"
#       when 5
#         puts "Have a nice day!"
#         return
#       else
#         puts "Invalid entry, please try again!"
#     end
#   end
# def play_blackjack
#   puts "How much would you like to bet?"
#   bet = gets.chomp.to_i
#   while  bet > @player.wallet.current_balance || bet < 1
#     puts "Insufficient funds."
#     bet = gets.chomp.to_i
#   end
#   deck = Deck.new
#   hand = Hand.new
#   deck.shuffle_cards
#   hand.hit(deck.deal)
#   hand.hit(deck.deal)
#   computer = Hand.new
#   computer.hit(deck.deal)
#   computer.hit(deck.deal)
#   puts "Hand value:#{hand.hand_value}"
#   puts "Opponent value:#{computer.hand_value}"
#   response = "h"
#   while response == "h"
#     puts "Press h for hit or s stay."
#     response = gets.strip
#     case response
#     when "h"
#       hand.hit(deck.deal)
#       puts "Hand value:#{hand.hand_value}"
#     break if hand.hand_value > 21
#     when "s"
#       puts "You selected to stay."
#     end
#   end
#   puts "Hand value:#{hand.hand_value}"
#   if hand.hand_value > 21
#     puts "You busted!"
#   elsif hand.hand_value == 21
#     puts "You got Blackjack!"
#   end
#   while computer.hand_value < 17
#     computer.hit(deck.deal)
#   end
#   puts "Computer value:#{computer.hand_value}"
#   if hand.hand_value > computer.hand_value && hand.hand_value <= 21
#     puts "You have won!"
#     @player.wallet.add_money(bet)
#   elsif hand.hand_value <= 21 && computer.hand_value > 21
#     puts "You have won!"
#     @player.wallet.add_money(bet)
#   else
#     puts "The computer has won."
#     @player.wallet.subtract_money(bet)
#   end
# end
# end
# Casino.new.show_menu
