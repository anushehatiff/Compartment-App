/**
 * method draws shape options to help user select shape for spiral drawing
 * @author Anusheh Atif 
 */
void selectShape() {  
  background(255, 202, 56);
  fill(66, 101, 170);
  triangle((width/4)/2, height/2 - ((0.75*width/4)/2), ((width/4)/2)+((0.75*width/4)/2), height/2 + ((0.75*width/4)/2), ((width/4)/2)-((0.75*width/4)/2), height/2 + ((0.75*width/4)/2));
  line(((width/4*2 + width/4)/2)+((0.75*width/4)/2), height/2, ((width/4*2 + width/4)/2)-((0.75*width/4)/2), height/2);
  circle((width/4 * 2 + width / 4 * 3)/2, height/2, (0.75*width/4));
  square((width+width/4*3)/2 -((0.75*width/4)/2), height/2-((0.75*width/4)/2), (0.75*width/4));

  strokeWeight(5);
  stroke(0);
}
