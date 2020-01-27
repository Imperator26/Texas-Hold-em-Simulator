import random

from game import Rounds

randomize(42)

type
  Card* = object
    rank: Ranks
    suit: Suits

  Ranks = enum
    crTwo
    crThree
    crFour
    crFive
    CrSix
    crSeven
    crEight
    crNine
    crTen
    crJack
    crQueen
    crKing
    crAce

  Suits = enum
    csClubs = "♧"
    csDiamonds = "♢"
    csHearts = "♡"
    csSpades = "♤"

  HandValues = enum
    Highcard
    Pair
    TwoPairs
    ThreeOfAKind
    Straight
    Flush
    FullHouse
    FourOfAKind
    StraightFlush
    RoyalFlush


proc shuffle_cards*(deck: var array[52, Card]): array[52, Card] =
  var i: int = 0

  # Generate deck
  for suit in Suits:
    for rank in Ranks:
      deck[i].rank = rank
      deck[i].suit = suit
      i += 1

  # Shuffle deck
  for i in 0..high(deck):
    let j = rand(i)
    var rank = deck[i].rank
    var suit = deck[i].suit
    deck[i].rank = deck[j].rank
    deck[i].suit = deck[j].suit
    deck[j].rank = rank
    deck[j].suit = suit

  return deck

proc evaluateHand*(
  hand: array[2, Card],
  community_cards: array[5, Card],
  round: Rounds
): HandValues =

  # Royal Flush
  if round >= Flop:
    
    if

  # Straight Flush

  # Four of a Kind

  # Full House

  # Flush

  # Straight

  # Three of a Kind

 # Two Pairs

 # Pair

 # High Card

 return
