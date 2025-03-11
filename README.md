# Cards

"Cards," also known as "Subset," is my first programming assignment for the course "Gestructureerd programmeren/Structured programming."

## The Assignment

For this course, I need to create an application that displays sets of cards. The player must select a set of three cards where, for at least one of the three attributes (Amount, Symbols, and/or Color), the attributes are either all the same (e.g., red, red, and red) or all different (e.g., red, green, and blue). However, a combination like "blue, red, red" is not valid. All "must-haves" and "could-haves" are as follows:

## Must-Haves/Requirements

* All cards must be created. This can be achieved by creating an array of 27 strings, where each card is represented by three characters: one for the value of each attribute. For example, the card "1rd" represents 1 red triangle, "2ge" represents 2 green ellipses, and "3br" represents 3 blue rectangles.
* The cards must be shuffled. Processing does not have a built-in method to randomly shuffle the elements in an array. One way to do this is by repeatedly swapping two random elements in the array multiple times.
* The cards must be neatly drawn on the screen. A 3x3 grid of cards is an obvious choice, but creative layouts are also acceptable.
* The shapes on the cards must be drawn neatly, properly aligned, and evenly spaced.
* A card may only be used once in the game. You must track which cards are still in the "deck" and which are on the screen. Tracking removed cards is optional, as that information is not required.
* The player must be able to select cards, and this selection must be visually indicated. For example, selected cards could have a different background color. The player must not be able to select the same card twice within one selection.
* The application must always know how many possible sets are on the table. This is necessary to determine when the game is over. If there are no more sets, the game ends. Note: A card can belong to multiple possible sets, and all of these sets must be counted.
* You must track how many sets the player has found and display this at the end of the game. This allows the player to see their performance.

## Could-Haves/Nice-to-Haves

### Simple:

* The final result of the game is displayed in the drawing window for the player, not in the console. This eliminates the need for the player to look at the console.
* The ability to deselect a selected card by clicking on it.

### Difficult:

* Real-time information displayed on the screen regarding how many cards are still in the "deck" and how many sets can be found in play.
* A "Give me a hint" button that highlights two cards from one of the available sets on the screen. Using this button could result in a point deduction.
* The ability for two players to take turns selecting three cards, enabling a competitive game.

### Very Difficult:

* Instead of displaying three attributes (number, shape, and color), display four attributes as in the original game. You can choose the fourth attribute—"filling" is an option, but alternatives are also allowed. In this case, drawing 12 cards instead of 9 is recommended, similar to the original game.

### Extremely Difficult:

* An "I see no set" button that adds three extra cards to the screen. Using this button could result in a point deduction.
