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
  if (mouseX >= 10&& mouseX <= (10+200) &&mouseY >= 10 && mouseY <= (10+60)) {
    addSet();
  }
}
