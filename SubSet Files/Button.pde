void drawButton(int x, int y, int width, int height, String text) {
  drawButton(x, y, width, height, text, false, false);
}

void drawButton(int x, int y, int width, int height, String text, boolean XCenter, boolean YCenter) {
  stroke(0);
  rect(x, y, width, height, 10); // Rounded corners
  textAlign((XCenter ?CENTER:LEFT), (YCenter?CENTER:TOP));

  fill(0);
  textSize(16);
  text(text, x + width / 2, y + height / 2);
  textAlign(LEFT, TOP);
  fill(color(POKERGREEN));
}

void mouseClicked() {
  if (mouseX >= 10&& mouseX <= (10+200) &&mouseY >= 10 && mouseY <= (10+60) && currentScreenState == ScreenState.Playing) {
    addSet();
  }
  if (currentScreenState == ScreenState.StartGame) {
    int buttonWidth = 200;
    int buttonHeight = 50;
    int buttonX = width / 2 - buttonWidth / 2;
    int buttonY = height / 3 + 60;

    // Check if the mouse is inside the "Start Game" button area
    if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
      currentDeck = generateDeck();
      currentScreenState = ScreenState.Playing;
    }
  }
}
