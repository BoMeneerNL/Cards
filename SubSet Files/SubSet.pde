
void setup() {
  size(800, 800);

}

void draw() {
  //set backgorund to correct color
  background(POKERGREEN);
  //when screenstate is playing load the hand
  if (currentScreenState == ScreenState.Playing) {
    drawHand();
  }
  //load screenstate
  DrawScreenState();
}
