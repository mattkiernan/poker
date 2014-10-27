class Analyzer

  def initialize(hand)
    @hand = hand
    check_for_pairs(get_hand_numbers)
    check_for_flushes(get_hand_suits)
    check_for_two_pair(get_hand_numbers)
    check_for_three_of_a_kind(get_hand_numbers)
  end

  def get_hand_numbers
    @numbers = []
    @hand.each do |card|
      @numbers << card.number
    end
  end

  def get_hand_suits
    @suits = []
    @hand.each do |card|
      @suits << card.suit
    end
  end


  def check_for_pairs(hand_numbers)
    counter = 0
    @hand.each do |card|
      if @numbers.count(card.number) == 2 
        counter = counter + 1
      end
    end
    if counter != 0
      puts "There are 1 pair"
    end
  end

  def check_for_two_pair(hand_numbers)
    counter = 0
    @hand.each do |card|
      if @numbers.count(card.number) == 2 
        counter = counter + 1
      end
    end
      if counter == 4
        puts "There are 2  pairs"
      end
  end

  def check_for_three_of_a_kind(hand_numbers)
    counter = 0
    @hand.each do |card|
      if @numbers.count(card.number) == 3 
        counter = counter + 1
      end
    end
    if counter != 0
      puts "There are 3 of a kind"
    end
  end

  def check_for_flushes(hand_suits)
    @hand.each do |card|
      if @suits.count(card.suit) == 5
        puts "There is a flush!"
      end
    end
  end

end
