class Card

  def initialize(number, suit)
    @number = number
    @suit = suit
  end

  def to_s
    "#{@number} #{@suit}"
  end

  attr_reader :number
  attr_reader :suit

end
