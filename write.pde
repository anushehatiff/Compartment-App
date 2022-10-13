
  /*
   * To make the draw method more clean, this method will write all the instructional sentances on the screens that need explaining without having to repeat code multiple times in the draw method
   * @param sentance: Takes in a string that will be displayed on the screen 
   * @param x: The x coordinate of where the text will be placed on the screen
   * @param y: The y coordinate of where the text will be placed
   * @author Raimah Farooqui
   */
void write(String sentence, int x, int y) {
  textFont(font);
  textAlign(CENTER);
  fill(42, 157, 143, 255);
  text(sentence, x, y);
}
