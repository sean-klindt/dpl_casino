class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'Spades', 'Black')
  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end

  def value
    case @rank
    when 'A'
      return 1
    when 'J'
      return 11
    when 'Q'
      return 12
    when 'K'
      return 13
    else
      @rank.to_i
    end
  end

  def to_s
    return "#{@rank} #{suit} (#{color})"
  end
end
