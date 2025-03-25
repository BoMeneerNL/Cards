//Arraylist containing the playing hand
ArrayList<String[]> hand = new ArrayList<String[]>();

//The current selected hand items (0 = none)
int[] selectedInHand = {0, 0, 0};

//draw the hand on the screen
void drawHand() {
  pullDeckToHand();
  if (countValidSets() < 1) {
    hand.clear();
    currentScreenState = ScreenState.Finish;
    return;
  }
  //draw all cards for the hand
  for (int i = 0; i < hand.size(); i++) {
    fill(WHITE);
    rect(width * i / hand.size(), height - (cardInSelectedHand(i + 1) ? 150 : 100), 100, 150, 14);
    fill(Integer.parseInt(hand.get(i)[2]));
    text(hand.get(i)[0], (width * i / hand.size()) + 5, height - ((cardInSelectedHand(i + 1) ? 125 : 75)));
    float x = (width * i / hand.size()) + 7;
    float y = height - ((cardInSelectedHand(i + 1) ? 95 : 55));
    
    //Draw the symbol on the card in hand
    switch (hand.get(i)[1]) {
    case "Triangle":
      triangle(x, y, x - 5, y + 10, x + 5, y + 10);
      break;
    case "Rectangle":
      rect(x - 5, y, 10, 10);
      break;
    case "Ellipse":
      ellipse(x, y + 5, 10, 10);
      break;
    }
  }
}
//get cards from deck for the hand
void pullDeckToHand() {
  ArrayList<String[]> currentPlayDeck = new ArrayList<String[]>(Arrays.asList(currentDeck));

  while (hand.size() < 9 && !currentPlayDeck.isEmpty()) {
    String[] card = currentPlayDeck.remove(0);
    hand.add(card); // Add to hand
  }
  currentDeck = currentPlayDeck.toArray(new String[0][]);
}

//Returns hand clicked index for card
int getClickedHandCard() {
  return round((mouseX / (width / 9)));
}
//handle selected card when clicked
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

//shift the selected cards on disselect
void shiftSelectionLeft() {
  for (int i = 0; i < selectedInHand.length - 1; i++) {
    if (selectedInHand[i] == 0) {
      selectedInHand[i] = selectedInHand[i + 1];
      selectedInHand[i + 1] = 0;
    }
  }
}
