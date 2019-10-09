import player
import card

const NO_PLAYERS = 6

var i: int = 0

# Initialize deck
var deck: array[52, Card]
deck = shuffle_cards(deck)

# Initialize players
var players: array[NO_PLAYERS, Player]
for p in 0..high(players):
  players[p].name = "p" & $i
  players[p].hand[0] = deck[i]
  i += 1
  players[p].hand[1] = deck[i]
  i += 1

# Start game
