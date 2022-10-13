/**
 * class spiral is a sublass of shape which accesses the shape methods
 * @author Anusheh Atif 
 */

class spiral extends shape { 

  /*
   * drawSpiral method takes the given parameters and creates spiral pattern on screen 
   * applies transformations to the shape (given from the super class) within a for loop to display spiral pattern on screen
   * @param colour: 2d array of colours used to display specific colour scheme
   * @param angle: what angle user wants the shape to be rotates by 
   * @param complexity: how intricate you want the spiral to be
   * @param shape: shape you want to create spiral pattern with  
   * @author Anusheh Atif  
   */
   
  void drawSpiral(int[][] colour, int angle, int complexity, String shape) {
    pushMatrix();
    translate(width/2, height/2);
    for (int i = 0; i < (complexity *100); i++) {
      rotate(angle);
      if (i%4 == 0) {
        stroke(colour[0][0], colour[0][1], colour[0][2]);
      } 
      else if (i%3 == 0) {
        stroke(colour[1][0], colour[1][1], colour[1][2]);
      } 
      else if (i%2 == 0)
      {
        stroke(colour[2][0], colour[2][1], colour[2][2]);
      } 
      else
      {
        stroke(colour[3][0], colour[3][1], colour[3][2]);
      }
      strokeWeight(1);
      
      if (shape == "l") {
        super.lines(i);
      } 
      else if (shape == "c") {
        super.ellipses(i);
      }
      else if (shape == "t") {
        super.triangles(i);
      } 
      else if (shape == "s") {
        super.squares(i);
      }
    }
    popMatrix();
  }
}
