require_relative 'wallet.rb'

class Dice_Game
  def initialize(wallet)
   @wallet = wallet
   play
  end


  def play
    roll
      end
        puts "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
        puts "Ready to roll"
        puts "How much money do you have to lose?"
    chips = gets.strip.to_i
      while chips > 0
      puts 'Place your bet! You have $ ' + chips.to_s + ' left'
    bet = gets.chomp
     while true
     if (chips.to_i - bet.to_i) < 0
      puts "looks like your all out of cash."
   bet = gets.chomp
      else
        break
      end
    end
    if bet.to_i > 5
      puts bet.to_s + "$$$$$$~~~~HIGH ROLLER~~~~$$$$$$"
      puts "I'll roll two dice, And you try and guess the total alright??"
    else
      puts bet.to_s + "Come on you can do better then that!!!"
      puts "I'll roll two dice, And you try and guess the total alright??"
    end
  total = gets.chomp
  dice_total = ((1 + rand(6))+(1 + rand(6)))
       print 'The total was ' + dice_total.to_s + '! '
    if dice_total.to_i == total.to_i
  chips = chips.to_i + bet.to_i
        puts 'You win! Nice job!'
  @wallet.add_money(bet)
        puts "New bankroll balance: $#{@wallet.current_balance}"
    else
      chips = chips.to_i - bet.to_i
      puts 'Not this time, my friend!'
      @wallet.subtract_money(bet) if !is_correct
     end
   end
  puts "GAME OVER. Dont quit your day job,"
  puts 'unless your day job is being a Boss.'
  puts "You want to lose some more money ?"
  if
    user_input = y
    puts "HOW MUCH MORE DO YOU WANT TO LOSE??"
    roll
  end
end