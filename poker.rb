class Deck

  def initialize
    cards = [2,3,4,5,6,7,8,9,10,"J", "Q", "K", "A"]
    suits = ["H","D","S","C"]
    build_deck(cards, suits)
  end

  def build_deck(cards, suits)
    cards.each do |card|
      suits.each do |suit|
        deck = [] << card.to_s + suit
        puts deck
      end
    end
  end

end

deck = Deck.new

