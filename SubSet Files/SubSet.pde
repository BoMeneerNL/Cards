
void setup() {
  size(800, 800);

  for (int i = 0; i < CurrentDeck.length; i++) {
    println(CurrentDeck[i]);
  }
}

void draw() {
  background(POKERGREEN);
  drawHand();
  fill(color(255, 255, 0));
  DrawButton(10, 10, 200, 60, "Set spelen", true, true); // Centered text
  DrawButton(width - 200 - 10, 10, 200, 60, "Sets: "+ currentSets.size(), true, true); // Centered text
}
void mouseClicked() {
  if (mouseX >= 10&& mouseX <= (10+200) &&mouseY >= 10 && mouseY <= (10+60)) {
    addSet();
  }
}
