/**
 * class mandela is used to for making mandela mode 
 * @author Raimah Farooqui
 */

class mandela {
  /*
   * canvas method makes the guildlines and divides up the screen into euqal sections for when the drawing begins
   * @param s: number of sections
   * @param turn: calculates the turn 
   * @author Raimah Farooqui
   */
  void canvas (int s) {
    translate (width/2, height/2);
    for (int i = 0; i < s; i ++) {
      float turn = (2*PI)/s;//tells us the angle of each section (all angles are the same since sections are equally divided)
      strokeWeight(0.5);
      arc(width/2, height/2, width*2, width*2, 0, (turn*i), PIE); //creates guidelines
      noFill();
      stroke(50);
    }
  }

  /*
   * mDrawing method allows user to draw mandela 
   * @param sw: gets the stroke weight from user to implement in drawing
   * @param s: get the number of sections from user
   * @param r, g, b: gets the RGB values for color of line
   * @author Raimah Farooqui
   */
  void mDrawing(int sw, int s, int r, int g, int b) {
    float turn = (2*PI)/s;

    if ((mouseX > 70 || mouseY > 390) && ( mouseY < (height-50) || mouseX < (width - 180))) {
      if (mousePressed == true) {
        pushMatrix();
        translate (width/2, height/2);
        float a = atan2(mouseY - height/2, mouseX - width/2); //angle
        float d = sqrt(sq(mouseY - height/2) + sq(mouseX - width/2)); //distance

        float pa = atan2(pmouseY - height/2, pmouseX - width/2); //prev angle
        float pd = sqrt(sq(pmouseY - height/2) + sq(pmouseX - width/2)); //prev distance

        stroke(r, g, b);
        strokeWeight(sw); //thickness of line
        for (int i = 0; i < s+1; i ++) {
          line(cos(a + i * turn) * d, sin(a + i * turn) * d, cos(pa + i * turn) * pd, sin(pa + i * turn) * pd);
        }
        popMatrix();
      }
    }
  }
}
