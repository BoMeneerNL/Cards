final int[] AMOUNT = {1, 2, 3};
final String[] SYMBOLS = {"Triangle", "Rectangle", "Ellipse"};
final int[] COLOURS = {RED, GREEN, BLUE};

boolean isValidCard(String[] possibleCard) {
  if (possibleCard.length != 3) {
    return false;
  }
  boolean AMOUNTCheck = false;
  boolean SYMBOLSCheck = false;
  boolean COLOURSCheck = false;

  for (int i = 0; i < AMOUNT.length; i++) {
    if (String.valueOf(AMOUNT[i]) == possibleCard[0]) {
      AMOUNTCheck = true;
      break;
    }
  }

  for (int i = 0; i < SYMBOLS.length; i++) {
    if (String.valueOf(SYMBOLS[i]) == possibleCard[1]) {
      SYMBOLSCheck = true;
      break;
    }
  }
  for (int i = 0; i < COLOURS.length; i++) {
    if (String.valueOf(SYMBOLS[i]) == possibleCard[1]) {
      COLOURSCheck = true;
      break;
    }
  }
  return AMOUNTCheck && SYMBOLSCheck && COLOURSCheck;
}
