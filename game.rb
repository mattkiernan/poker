require "./deck"
require "./analyze"

class Game
  def initialize
    deck = Deck.new
    deck.build
    shuffle(deck.cards)
  end

  def shuffle(deck)
    @shuffled_deck = deck.shuffle
  end

  def deal
    @hand = []
    5.times do 
      @hand << @shuffled_deck.pop
    end
    puts @hand
  end

  def play
    deal
    Analyzer.new(@hand)
  end


end


game = Game.new
game.play
