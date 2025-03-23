

Set<String[][]> currentSets = new HashSet<>();


boolean isSet(String[][] set) {
  if (set.length != 3) {
    return false;
  }
  // Check if amounts are all the same, or all diffrent
  boolean validAmounts = (set[0][0].equals(set[1][0]) && set[0][0].equals(set[2][0])) ||
    (!set[0][0].equals(set[1][0]) && !set[0][0].equals(set[2][0]) && !set[1][0].equals(set[2][0]));

  // Check if symbols are all the same, or all diffrent
  boolean validSymbols = (set[0][1].equals(set[1][1]) && set[0][1].equals(set[2][1])) ||
    (!set[0][1].equals(set[1][1]) && !set[0][1].equals(set[2][1]) && !set[1][1].equals(set[2][1]));

  // Check if colours are all the same, or all diffrent
  boolean validColours = (set[0][2].equals(set[1][2]) && set[0][2].equals(set[2][2])) ||
    (!set[0][2].equals(set[1][2]) && !set[0][2].equals(set[2][2]) && !set[1][2].equals(set[2][2]));

  return validAmounts || validSymbols || validColours;
}

int countValidSets() {
  int count = 0;

  // Loop through all combinations of 3 cards in the hand
  for (int i = 0; i < hand.size() - 2; i++) {
    for (int j = i + 1; j < hand.size() - 1; j++) {
      for (int k = j + 1; k < hand.size(); k++) {
        String[][] possibleSet = {hand.get(i), hand.get(j), hand.get(k)};
        if (isSet(possibleSet)) {
          count++;
        }
      }
    }
  }
  return count;
}




void addSet() {
  for (int i = 0; i < selectedInHand.length; i++) {
    if (selectedInHand[i] == 0 || hand.size() < selectedInHand[i]) {
      println(selectedInHand);
      return;
    }
  }

  String[][] set = {hand.get(selectedInHand[0]), hand.get(selectedInHand[1]), hand.get(selectedInHand[2])};
  if (!isSet(set)) {
    println("set no set");
    return;
  }

  for (int i = 0; i < selectedInHand.length - 1; i++) {
    for (int j = 0; j < selectedInHand.length - 1 - i; j++) {
      if (selectedInHand[j] < selectedInHand[j + 1]) {
        int temp = selectedInHand[j];
        selectedInHand[j] = selectedInHand[j + 1];
        selectedInHand[j + 1] = temp;
      }
    }
  }
  for (int i = 0; i < selectedInHand.length; i++) {
    hand.remove(selectedInHand[i]);
    selectedInHand[i] = 0;
  }
  currentSets.add(set);
  return;
}
