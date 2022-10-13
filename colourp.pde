/**
 * method draws the squares and colors them in, to help user select a color palette for the sprial mode
 * @author Raimah Farooqui
 */

void colourp() {  
  background(255, 202, 56);
  //sq4
  fill(254, 145, 228);
  square((width+width/4*3)/2 -((0.75*width/4)/2), height/2-((0.75*width/4)/2), (0.75*width/4));
  fill(185, 246, 249);
  square((width+width/4*3)/2, height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(93, 239, 255);
  square((width+width/4*3)/2 -((0.75*width/4)/2), height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(253, 218, 255);
  square((width+width/4*3)/2 -((0.75*width/4)/2), height/2, (0.75*width/4)/2);

  //sq3
  fill(254, 181, 125);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4), height/2-((0.75*width/4)/2), (0.75*width/4));
  fill(254, 103, 70);
  square((width+width/4*3)/2 - (width/4), height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(184, 35, 60);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4), height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(117, 38, 5 );
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4), height/2, (0.75*width/4)/2);

  //sq2
  fill(5, 155, 205);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*2, height/2-((0.75*width/4)/2), (0.75*width/4));
  fill(41, 52, 125);
  square((width+width/4*3)/2 - (width/4)*2, height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(99, 45, 144);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*2, height/2, (0.75*width/4)/2);
  fill(48, 10, 71);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*2, height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  
  //sq1
  fill(7, 241, 130);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*3, height/2-((0.75*width/4)/2), (0.75*width/4));
  fill(144, 252, 81);
  square((width+width/4*3)/2 - (width/4)*3, height/2-((0.75*width/4)/2), (0.75*width/4)/2);
  fill(232, 239, 61);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*3, height/2, (0.75*width/4)/2);
  fill(204, 224, 57);
  square((width+width/4*3)/2 -((0.75*width/4)/2) - (width/4)*3, height/2-((0.75*width/4)/2), (0.75*width/4)/2);

  strokeWeight(5);
  stroke(0);
}
