import java.util.ArrayList;
ArrayList<Card> generateDeck() {
  ArrayList<Card> Cards = new ArrayList<Card>();
  for (int amount = 0; amount < AMOUNT.length; amount++) {
    for (int symbol = 0; symbol < SYMBOLS.length; symbol++) {
      for (int colour = 0; colour < COLOURS.length; colour++) {
        Cards.add(new Card(AMOUNT[amount], SYMBOLS[symbol], COLOURS[colour]));
      }
    }
  }
  return shuffleDeck(Cards);
}
ArrayList<Card> shuffleDeck(ArrayList<Card> Deck) {
  ArrayList<Card> shuffledDeck= new ArrayList<Card>();
  final int ORIGINAL_DECK_LENGTH = Deck.size();
  while (shuffledDeck.size() != ORIGINAL_DECK_LENGTH) {
    int random = (int)(Math.random() * Deck.size());
    shuffledDeck.add(Deck.get(random));
    Deck.remove(random);
  }
  return shuffledDeck;
}
