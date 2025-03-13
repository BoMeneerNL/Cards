import java.util.Arrays;

class Card {
  int Amount;
  String Symbol;
  int Colour;

  Card(int Amount, String Symbol, int Colour) {
    if (!checkCardInput(Amount, Symbol, Colour)) {
      throw new IllegalArgumentException("Input check failed");
    }
    this.Amount = Amount;
    this.Symbol = Symbol;
    this.Colour = Colour;
  }

  
}
boolean checkCardInput(int Amount, String Symbol, int Colour) {
    boolean amountValid = false;
    boolean symbolValid = false;
    boolean colourValid = false;

    for (int num : AMOUNT) {
      if (num == Amount) {
        amountValid = true;
        break;
      }
    }
    
    for (String sym : SYMBOLS) {
      if (sym.equals(Symbol)) {
        symbolValid = true;
        break;
      }
    }
    
    for (int col : COLOURS) {
      if (col == Colour) {
        colourValid = true;
        break;
      }
    }

    return amountValid && symbolValid && colourValid;
  }
