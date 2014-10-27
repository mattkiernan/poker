require "./card"

class Deck
  def initialize
    @numbers = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    @suits = ["H","D","S","C"]
    @cards = []
  end

  attr_reader :cards

  def build
    @numbers.each do |number|
      @suits.each do |suit|
        @cards << Card.new(number, suit)
      end
    end
  end
end


