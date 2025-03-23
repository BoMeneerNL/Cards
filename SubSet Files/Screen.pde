enum ScreenState {
  StartGame,
    Playing,
    Finish
};

ScreenState currentScreenState = ScreenState.StartGame;

void DrawScreenState() {
  switch(currentScreenState) {
  case StartGame:
    textAlign(CENTER, CENTER);
    fill(WHITE);
    textSize(48);
    text("Welcome to SubSet", width / 2, height / 3);
    textSize(12);
    textAlign(LEFT, TOP);

    int buttonWidth = 200;
    int buttonHeight = 50;
    int buttonX = width / 2 - buttonWidth / 2;
    int buttonY = height / 3 + 60;

    drawButton(buttonX, buttonY, buttonWidth, buttonHeight, "Start Game", true, true);
    break;


  case Playing:
    textAlign(LEFT, TOP);
    fill(color(255, 255, 0));
    drawButton(10, 10, 200, 60, "Set spelen", true, true); // Centered text
    drawButton(width - 200 - 10, 10, 200, 60, "Sets: "+ currentSets.size(), true, true); // Centered text
    break;


  case Finish:
    textAlign(CENTER, CENTER);
    fill(WHITE);
    textSize(48);
    text("Game Over!", width / 2, height / 3);  // Display "Game Over" message
    textSize(24);
    text("You found " + currentSets.size() + " sets.", width / 2, height / 2);  // Display the number of sets found
    break;
  }
}
