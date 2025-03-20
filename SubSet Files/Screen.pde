enum ScreenState {
  StartGame,
    ExplainGame,
    Playing,
    Finish
};

ScreenState currentScreenState = ScreenState.StartGame;

void DrawScreenState() {
  switch(currentScreenState) {
  case StartGame:
    break;

  case ExplainGame:
    break;

  case Playing:
    ///KEEP EMPTY, WILL BE RENDERED BY THE ITEMS ITSELF
    break;

  case Finish:
    break;
  }
}
