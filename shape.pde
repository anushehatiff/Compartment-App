/**
 * super class shape has methods that initialize each specific shape that will be used for spiral mode
 * each method takes an int as a parameter which either changes the location OR size of specific shape 
 * benefit of creating super class: allows us to reference this class and access the same shapes when creating other variations of the spiral mode (via sub classes)
 * @author Anusheh Atif 
*/
class shape {  
  /**
  * draws 4 lines 
  * @param int j: used for y coordinates of all 4 lines
  * @author Anusheh Atif
  */
  void lines(int j){
    line (900,j,-900,j++);
    line (-900,j-width/2,600,j++);
    line (-900,-j+width,900,j++);
    line (900,j-width/2,-600,j++);

  }
  
  /**
  * draws circle 
  * @param int j: used for x,y coordinate and radius
  * @author Anusheh Atif
  */
  void ellipses(int j){
    noFill();
    ellipse (0,j,j,j++);
  }
  
  /**
  * draws square 
  * @param int j: used for width/length of square
  * @author Anusheh Atif
  */
  void squares (int j){
    noFill();
    square(0,0,j++);
  }
  
  /**
  * draws triangle
  * @param int j: used in the 3 coordinates of the triangle
  * @author Anusheh Atif
  */
  void triangles(int j){
    noFill();
    triangle(850,j,j,850,j,(j+j)/2);
  }
}
