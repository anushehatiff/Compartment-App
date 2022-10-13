/*
 * class used to organize clusters of buttons and tuck away unecessary lines of code
 * each method either hides or displays a group of buttons 
 * @author Anusheh Atif 
*/

class Display{ 
  
  void hide(){
    spiral.hide(); 
    mandela.hide();   
    triangle.hide();
    line.hide(); 
    circle.hide();
    square.hide();
    mSections.hide();
    weight.hide();
    nextM.hide();
    red.hide(); 
    yellow.hide();
    green.hide();
    blue.hide();
    pink.hide();
    lime.hide();
    cove.hide();
    sunset.hide();
    candy.hide();
    mComplexity.hide();
    nextN.hide();
    mAngle.hide();
    backS.hide();
    backM.hide();
    backC.hide();
    save.hide();
  }
  
  void mainMenu(){
    mandela.show(); 
    spiral.show();
    backC.hide();
  }
  
  void chooseShape(){
    backC.show();
    triangle.show();
    line.show(); 
    circle.show();
    square.show();
  
  }
  
  void chooseCP(){
    backS.show();
    lime.show();
    cove.show();
    sunset.show();
    candy.show();
  }
  
  void adjustSpiral(){
    mComplexity.show();
    mAngle.show();
    backS.show();
    save.show();
  }
  
  void chooseMandela(){
    backC.show();
    mSections.show();
    weight.show();
    nextM.show();
  }
  
  void mandelaButtons(){
    save.show();
    backM.show();
    red.show(); 
    yellow.show();
    green.show();
    pink.show();
    blue.show();
  }
}
