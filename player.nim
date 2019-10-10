import card

type
  Player* = object
    name*: string
    chips*: int
    hand*: array[2, Card]
    bet*: Bets
