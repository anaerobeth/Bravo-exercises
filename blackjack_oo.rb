#!/usr/bin/env ruby
# encoding: UTF-8
class Deck
# build deck
  SUITS = ['♠', '♣', '♥', '♦']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  @player_cards = []
  @dealer_cards = []
  @player_busted = false
  @dealer_busted = false

  def build_deck
    @deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck.push(value + suit)
      end
    end
    @deck = @deck.shuffle
  end

  def pop
    deck.pop
  end

end



class Card
  def get_value(card)
    case
    when ["J", "Q", "K"].include?(card)
      return 10
    when card == "A"
      return 11
    else
      return card
    end
  end
end




class Hand
  def hit(card)

  end

  def stay

  end

  def score

  end

  def busted?
    if score(hand) > 21
      puts "Dealer busted!"
      break
    end
  end
end