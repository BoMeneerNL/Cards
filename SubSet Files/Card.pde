final int[] AMOUNT = {1, 2, 3};
final String[] SYMBOLS = {"Triangle", "Rectangle", "Ellipse"};
final int[] COLOURS = {RED, GREEN, BLUE};

boolean isValidCard(String[] possibleCard) {
  if (possibleCard.length != 3) {
    return false;
  }
  boolean amountCheck = false;
  boolean symbolsCheck = false;
  boolean coloursCheck = false;

  for (int i = 0; i < AMOUNT.length; i++) {
    if (String.valueOf(AMOUNT[i]) == possibleCard[0]) {
      amountCheck = true;
      break;
    }
  }

  for (int i = 0; i < SYMBOLS.length; i++) {
    if (String.valueOf(SYMBOLS[i]) == possibleCard[1]) {
      symbolsCheck = true;
      break;
    }
  }
  for (int i = 0; i < COLOURS.length; i++) {
    if (String.valueOf(COLOURS[i]) == possibleCard[1]) {
      coloursCheck = true;
      break;
    }
  }
  return amountCheck && symbolsCheck && coloursCheck;
}

void mouseReleased() {
  if (mouseY >= height - 150) {
    handleNewClickedSelectHandItem(getClickedHandCard());
  }
}
