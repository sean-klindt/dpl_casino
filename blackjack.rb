class Blackjack
  def initialize(wallet)
   @wallet = wallet
  end

  def blackjack_game
  @wallet.subtract_money(bid)

  end
end
