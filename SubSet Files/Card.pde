import java.util.Arrays;

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
