require "./deck"

class Game
  def initialize
    deck = Deck.new
    deck.build
    puts deck.cards
  end

end

Game.new
