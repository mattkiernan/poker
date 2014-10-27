class Card

  def initialize(number_and_suit)
    @number = number_and_suit[:number]
    @suit = number_and_suit[:suit]
  end

  def to_s
    "#{@number} #{@suit}"
  end

end
