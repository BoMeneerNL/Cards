import java.util.ArrayList;
import java.util.Collections;

String[][] generateDeck() {
  ArrayList<String[]> Cards = new ArrayList<>();

  for (int amount = 0; amount < AMOUNT.length; amount++) {
    for (int symbol = 0; symbol < SYMBOLS.length; symbol++) {
      for (int colour = 0; colour < COLOURS.length; colour++) {
        String[] Card = {
          String.valueOf(AMOUNT[amount]),
          SYMBOLS[symbol],
          String.valueOf(COLOURS[colour])
        };
        Cards.add(Card);
      }
    }
  }
  return shuffleDeck(Cards);
}

String[][] shuffleDeck(ArrayList<String[]> Deck) {
  ArrayList<String[]> shuffledDeck = new ArrayList<>(Deck);
  Collections.shuffle(shuffledDeck);
  return shuffledDeck.toArray(new String[0][]);
}
