

Set<String[][]> currentSets = new HashSet<>();


boolean isSet(String[][] set) {

  if (set.length != 3) {
    println("Not a valid set. The set does not have 3 rows.");
    return false;
  }

  if ((set[0][0].equals(set[1][0]) && set[0][0].equals(set[2][0])) ||
    (set[0][1].equals(set[1][1]) && set[0][1].equals(set[2][1])) ||
    (set[0][2].equals(set[1][2]) && set[0][2].equals(set[2][2]))) {
    println("Valid set - elements in at least one column are all the same.");
    return true;
  }
  if ((!set[0][0].equals(set[1][0]) && !set[0][0].equals(set[2][0]) && !set[1][0].equals(set[2][0])) ||
    (!set[0][1].equals(set[1][1]) && !set[0][1].equals(set[2][1]) && !set[1][1].equals(set[2][1])) ||
    (!set[0][2].equals(set[1][2]) && !set[0][2].equals(set[2][2]) && !set[1][2].equals(set[2][2]))) {
    println("Valid set - elements in at least one column are all distinct.");
    return true;
  }
  println("Not a valid set.");
  return false;
}



void addSet() {
  for (int i = 0; i < selectedInHand.length; i++) {
    if (selectedInHand[i] == 0 || hand.size() < selectedInHand[i]) {
      println(selectedInHand);
      return;
    }
  }

  String[][] set = {hand.get(selectedInHand[0]), hand.get(selectedInHand[1]), hand.get(selectedInHand[1])};
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
