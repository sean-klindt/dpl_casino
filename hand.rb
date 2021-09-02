class Hand
  attr_accessor :cards
  def initialize
    @cards = []
  end
  
  def hit(card)
    @cards << card
  end

  def hand_value
    value = 0
    @cards.each do |card|
      value += card.value
    end
    value
  end
  
end