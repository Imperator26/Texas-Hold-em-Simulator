import card

type
  Player* = object
    name*: string
    hand*: array[2, Card]
