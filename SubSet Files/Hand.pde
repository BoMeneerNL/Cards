ArrayList<String[]> hand = new ArrayList<String[]>();
int[] selectedInHand = {0, 0, 0};

void drawHand() {
  pullDeckToHand();
  for (int i = 0; i < hand.size(); i++) {
    fill(WHITE);
    rect(width * i / hand.size(), height - (cardInSelectedHand(i + 1) ? 150 : 100), 100, 150, 14);
    fill(Integer.parseInt(hand.get(i)[2]));
    text(hand.get(i)[0], (width * i / hand.size()) + 5, height - ((cardInSelectedHand(i + 1) ? 125 : 75)));
    float x = (width * i / hand.size()) + 7;
    float y = height - ((cardInSelectedHand(i + 1) ? 95 : 55));

    switch (hand.get(i)[1]) {
    case "Triangle":
      triangle(x, y, x - 5, y + 10, x + 5, y + 10);
      break;
    case "Rectangle":
      rect(x - 5, y, 10, 10); // A 10x10 rectangle
      break;
    case "Ellipse":
      ellipse(x, y + 5, 10, 10);
      break;
    }
  }
}

void pullDeckToHand() {
  ArrayList<String[]> currentPlayDeck = new ArrayList<String[]>(Arrays.asList(CurrentDeck));

  while (hand.size() < 9 && !currentPlayDeck.isEmpty()) {
    String[] card = currentPlayDeck.remove(0); // Take the first card from CurrentDeck
    hand.add(card); // Add to hand
  }
  CurrentDeck = currentPlayDeck.toArray(new String[0][]);
}
void mouseReleased() {
  if (mouseY >= height - 150) {
    handleNewClickedSelectHandItem(getClickedHandCard());
  }
}
//Returns hand clicked index for card
int getClickedHandCard() {
  return round((mouseX / (width / 9)));
}

void handleNewClickedSelectHandItem(int index) {
  if (index >= hand.size()) return;

  int cardNumber = index + 1;

  for (int i = 0; i < selectedInHand.length; i++) {
    if (selectedInHand[i] == cardNumber) {
      selectedInHand[i] = 0;
      shiftSelectionLeft();  // Shift elements left to maintain order
      return;
    }
  }
  
  for (int i = 0; i < selectedInHand.length; i++) {
    if (selectedInHand[i] == 0) {
      selectedInHand[i] = cardNumber;
      return;
    }
  }


  selectedInHand[0] = selectedInHand[1];
  selectedInHand[1] = selectedInHand[2];
  selectedInHand[2] = cardNumber;
}



boolean cardInSelectedHand(int cardNumber) {
  boolean hasCard = false;
  for (int i = 0; i < selectedInHand.length; i++) {
    if (selectedInHand[i] == cardNumber) {
      hasCard = true;
      break;
    }
  }
  return hasCard;
}
void shiftSelectionLeft() {
  for (int i = 0; i < selectedInHand.length - 1; i++) {
    if (selectedInHand[i] == 0) {
      selectedInHand[i] = selectedInHand[i + 1];
      selectedInHand[i + 1] = 0;
    }
  }
}
