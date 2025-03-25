//draw centerless button
void drawButton(int x, int y, int width, int height, String text) {
  drawButton(x, y, width, height, text, false, false);
}

//add parameters from other drawbutton to be able to choose if you want to center text
void drawButton(int x, int y, int width, int height, String text, boolean xCenter, boolean yCenter) {
  stroke(0);
  rect(x, y, width, height, 10);
  textAlign((xCenter ? CENTER:LEFT), (yCenter ? CENTER:TOP));

  fill(0);
  textSize(16);
  text(text, x + width / 2, y + height / 2);
  textAlign(LEFT, TOP);
  fill(color(POKERGREEN));
}

void mouseClicked() {
  //handle play set button
  if (mouseX >= 10&& mouseX <= (10+200) &&mouseY >= 10 && mouseY <= (10+60) && currentScreenState == ScreenState.Playing) {
    addSet();
  }
  //handle start game button
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
