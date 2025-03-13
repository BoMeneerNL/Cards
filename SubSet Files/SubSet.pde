import java.util.ArrayList;
void setup() {
  size(1000, 800);
  background(WHITE);
  ArrayList<Card> CurrentDeck = generateDeck();
  CurrentDeck.forEach((x)->{
  String[] data = {""+x.Amount,""+x.Symbol,""+x.Colour};
  println(data);
  });
}

void draw() {
}
