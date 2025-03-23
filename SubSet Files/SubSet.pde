
void setup() {
  size(800, 800);

}

void draw() {
  background(POKERGREEN);
  if (currentScreenState == ScreenState.Playing) {
    drawHand();
  }
  DrawScreenState();
}
