import controlP5.*;  //Refer to user manual before running code
String sh;
String s;
int r1;
int g1;
int b1;

//Buttons done by Anusheh Atif (intitialized in void setup)
ControlP5 exit;
ControlP5 spiral;

ControlP5 mandela;
ControlP5 mSections;
int sections;
ControlP5 weight;
int thickness;
ControlP5 nextM;
ControlP5 shape;
Button triangle, line, circle, square;
ControlP5 red;
ControlP5 yellow;
ControlP5 green;
ControlP5 blue;
ControlP5 pink;

//array of 180 images (Anusheh Atif) 
PImage [] imgs = new PImage[180];

//instances of specified classes: refer to classes if necessary (Anusheh Atif)
mandela a;
spiral b;
Display tab;


//Buttons done by Raimah Farooqui (intitialized in void setup)
ControlP5 mAngle;
int angle;
ControlP5 mComplexity;
int complexity;
ControlP5 nextN;
ControlP5 backS;
ControlP5 backM;
ControlP5 backC;
ControlP5 save;
ControlP5 palette;
Button lime, cove, sunset, candy;

//double arrays for color palette in spiral mode done by Raimah Farooqui
int[][] cLime = {{7, 241, 130}, {144, 252, 81}, {232, 239, 61}, {204, 224, 57}};
int[][] cCove = {{5, 155, 205}, {41, 52, 125}, {99, 45, 144}, {48, 10, 71}};
int[][] cSunset = {{254, 181, 125}, {254, 103, 70}, {184, 35, 60}, { 117, 38, 5}};
int[][] cCandy = {{254, 145, 228}, {185, 246, 249}, {93, 239, 255}, {253, 218, 255}};
int[][] cPalette = new int[4][3];

//Done by Raimah 
PFont font;
PFont font2;
PFont title;
int screen = 0;
int show = 0;
String[] file; //String array used to save information from the text file done by Raimah 

void setup() {

  background(255, 202, 56);
  fullScreen();
  
  //instances of specified classes (refer to classes if needed), syntax done by Anusheh Atif
  tab = new Display();
  b = new spiral();
  a = new mandela();
  
  //for loop used to add frames of png images inside imgs array: refer to line 26 if necessary (Anusheh Atif) 
  for ( int i = 0; i < 180; i++) {
    String tens = "";
    String hundreds = "";
    if ( i < 10 ) tens = "0";
    if ( i < 100 ) hundreds = "0";
    imgs[i] = loadImage( "frame_" + hundreds + tens + i + "_delay-0.03s.png" );
  }
  
  //imported fonts to use within app done by Raimah
  title = loadFont("LeelawadeeUI-Bold-150.vlw");
  font2 = loadFont("LeelawadeeUI-Semilight-24.vlw");
  font = loadFont("Candra-38.vlw");

  file = loadStrings("data/save_number.txt");
  
  exit = new ControlP5(this);  //Anusheh Atif
  exit.addButton("Exit")
    .setPosition(0, 0)
    .setSize(70, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(255, 0, 0))
    .setColorForeground(color(210, 0, 0))
    .setColorBackground(color(255, 211, 98))
    .setFont(font2);

  exit.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        exit();
        break;
      }
    }
  }
  );

  spiral = new ControlP5(this);   //Anusheh Atif
  spiral.addButton("Mode: Spiral")
    .setPosition(width/2-100, height/2-15)
    .setSize(200, 50)
    .setColorCaptionLabel(color(0, 0, 0))
    .setColorActive(color(255, 112, 64))
    .setColorForeground(color(255, 112, 64))
    .setColorBackground(color(255, 141, 103))
    .setFont(font2);

  spiral.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        screen = 1;
        break;
      }
    }
  }
  );

  mandela = new ControlP5(this);  //Anusheh Atif
  mandela.addButton("Mode: Mandela")
    .setPosition(width/2-100, height/2+55)
    .setSize(200, 50)
    .setColorCaptionLabel(color(0, 0, 0))
    .setColorActive(color(255, 112, 64))
    .setColorForeground(color(255, 112, 64))
    .setColorBackground(color(255, 141, 103))
    .setFont(font2);

  mandela.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        screen = 5;
        break;
      }
    }
  }
  );

  shape = new ControlP5(this);

  triangle = shape.addButton("Triangle")   //Anusheh Atif
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 - (width/4), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  triangle.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        sh = "t";
        screen = 2;
        break;
      }
    }
  }
  );

  line = shape.addButton("Line")    //Anusheh Atif
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60, height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  line.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        sh = "l";
        screen = 2;
        break;
      }
    }
  }
  );

  circle = shape.addButton("circle")   //Anusheh Atif
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 + (width/4), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  circle.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        sh = "c";
        screen = 2;
        break;
      }
    }
  }
  );

  square = shape.addButton("square")    //Anusheh Atif
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 + (width/2), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  square.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        sh = "s";
        screen = 2;
        break;
      }
    }
  }
  );

  mSections = new ControlP5(this);    //Anusheh Atif
  mSections.addSlider("sections")
    .setPosition(width*0.2-50, height/2 - int(height * 0.3) )
    .setSize(30, int(height * 0.65))
    .setRange(2, 20)
    .setValue(10)
    .setColorCaptionLabel(color(20, 20, 20));

  weight = new ControlP5(this);    //Anusheh Atif
  weight.addSlider("thickness")
    .setPosition(width*0.2 + 20, height/2 - int(height * 0.3) )
    .setSize(30, int(height * 0.65))
    .setRange(2, 40)
    .setValue(5)
    .setColorCaptionLabel(color(20, 20, 20));

  nextM = new ControlP5 (this);   //Anusheh Atif
  nextM.addButton("NEXT")
    .setPosition(width - width*0.2, height/2)
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  nextM.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        background(0);
        screen = 6;
        break;
      }
    }
  }
  );

  red = new ControlP5(this); 

  red.addButton(" ")  //Anusheh Atif
    .setPosition(20, 60)
    .setSize(50, 50)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(237, 0, 0))
    .setColorForeground(color(237, 0, 0))
    .setColorBackground(color(237, 0, 0))
    .setFont(font2);

  red.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        r1 = 237;
        g1 = 0;
        b1 = 0;
      }
    }
  }
  );

  yellow = new ControlP5(this); 

  yellow.addButton(" ")  //Anusheh Atif
    .setPosition(20, 130)
    .setSize(50, 50)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(235, 231, 41))
    .setColorForeground(color(235, 231, 41))
    .setColorBackground(color(235, 231, 41))
    .setFont(font2);

  yellow.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        r1 = 235;
        g1 = 231;
        b1 = 41;
      }
    }
  }
  );

  green = new ControlP5(this); 

  green.addButton(" ")  //Anusheh Atif
    .setPosition(20, 200)
    .setSize(50, 50)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(19, 237, 53))
    .setColorForeground(color(19, 237, 53))
    .setColorBackground(color(19, 237, 53))
    .setFont(font2);

  green.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        r1 = 19;
        g1 = 237;
        b1 = 53;
      }
    }
  }
  );

  pink = new ControlP5(this);  

  pink.addButton(" ")  //Anusheh Atif
    .setPosition(20, 270)
    .setSize(50, 50)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(247, 32, 237))
    .setColorForeground(color(247, 32, 237))
    .setColorBackground(color(247, 32, 237))
    .setFont(font2);

  pink.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        r1 = 247;
        g1 = 32;
        b1 = 237;
      }
    }
  }
  );

  blue = new ControlP5(this); 

  blue.addButton(" ")  //Anusheh Atif
    .setPosition(20, 340)
    .setSize(50, 50)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(35, 143, 247))
    .setColorForeground(color(35, 143, 247))
    .setColorBackground(color(35, 143, 247))
    .setFont(font2);

  blue.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        r1 = 35;
        g1 = 143;
        b1 = 247;
      }
    }
  }
  );


  palette  = new ControlP5(this);

  lime = palette.addButton("Lime")  //Raimah Farooqui
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 - (width/4), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  lime.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        s = "m";
        cPalette = cLime;
        screen = 3;
        break;
      }
    }
  }
  );

  cove = palette.addButton("Cove")   //Raimah Farooqui
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60, height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  cove.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        s = "o";
        cPalette = cCove;
        screen = 3;
        break;
      }
    }
  }
  );

  sunset = palette.addButton("Sunset")   //Raimah Farooqui
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 + (width/4), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  sunset.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        s = "u";
        cPalette = cSunset;
        screen = 3;
        break;
      }
    }
  }
  );

  candy = palette.addButton("Candy")   //Raimah Farooqui
    .setPosition((((width/4*2 + width/4)/2)-((0.75*width/4)/2) + ((width/4*2 + width/4)/2)+((0.75*width/4)/2))/2 - 60 + (width/2), height/2+ (0.4* height/2))
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  candy.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        s = "d";
        cPalette = cCandy;
        screen = 3;
        break;
      }
    }
  }
  );

  mComplexity = new ControlP5(this);   //Raimah Farooqui
  mComplexity.addSlider("complexity")
    .setPosition(45, height/2 - int(height*0.55/2))
    .setSize(30, int(height*0.65))
    .setRange(1, 6)
    .setValue(1)
    .setColorCaptionLabel(color(20, 20, 20));

  mAngle = new ControlP5(this);   //Raimah Farooqui
  mAngle.addKnob("angle")
    .setRange(1, 360)
    .setValue(180)
    .setPosition(10, 60)
    .setRadius(50)
    .setDragDirection(Knob.HORIZONTAL)
    .setColorCaptionLabel(color(20, 20, 20));

  nextN = new ControlP5 (this); //Raimah Farooqui
  nextN.addButton("NEXT")
    .setPosition(width - width*0.2, height/2)
    .setSize(120, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(100, 0, 0))
    .setColorForeground(color(0, 0, 100))
    .setColorBackground(color(0, 100, 0))
    .setFont(font2);

  nextN.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        screen = 4;
        break;
      }
    }
  }
  );

  backS = new ControlP5(this); //Raimah Farooqui
  backS.addButton("Back")
    .setPosition(80, 0)
    .setSize(70, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(255, 0, 0))
    .setColorForeground(color(210, 0, 0))
    .setColorBackground(color(255, 211, 98))
    .setFont(font2);

  backS.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        screen = (screen - 1);
        break;
      }
    }
  }
  );

  backM = new ControlP5(this);   //Raimah Farooqui
  backM.addButton("Back")
    .setPosition(80, 0)
    .setSize(70, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(255, 0, 0))
    .setColorForeground(color(210, 0, 0))
    .setColorBackground(color(255, 211, 98))
    .setFont(font2);

  backM.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        screen = 5;
        r1 = 0;
        g1= 0;
        b1 = 0;
        break;
      }
    }
  }
  );

  backC = new ControlP5(this);   //Raimah Farooqui
  backC.addButton("Back")
    .setPosition(80, 0)
    .setSize(70, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(255, 0, 0))
    .setColorForeground(color(210, 0, 0))
    .setColorBackground(color(255, 211, 98))
    .setFont(font2);

  backC.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        background(255, 227, 134);
        triangle.hide();
        line.hide();
        circle.hide();
        square.hide();
        mSections.hide();
        weight.hide();
        nextM.hide();
        screen = 0;
        backC.hide();
        break;
      }
    }
  }
  );

  save = new ControlP5(this);   //Raimah Farooqui
  save.addButton("Hold to save")
    .setPosition(width- 180, height-50)
    .setSize(170, 40)
    .setColorCaptionLabel(color(255, 255, 255))
    .setColorActive(color(0, 255, 0))
    .setColorForeground(color(255, 0, 0))
    .setColorBackground(color(255, 211, 98))
    .setFont(font2);

  save.addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      switch(theEvent.getAction()) {
        case(ControlP5.ACTION_PRESSED):
        saveAndUpdate();
        break;
      }
    }
  }
  );
}


void draw() {  
  tab.hide();
  
  if (screen == 0) {
    background(255, 202, 56);
    
    //outputs all images within images array which then presents itself as an animation on screen (Anusheh Atif) refer to line 26 and line 72
    imageMode(CENTER);
    image(imgs[frameCount%180], width/2, height/2);

    textFont(title);
    textAlign(CENTER);
    text("Comp-ART-ment", width/2, height/4);
    fill(42, 157, 143, 255);
    write("Your place to explore computational art!", int(width/2), int(height/1.1));
    tab.mainMenu();
  } 
  
  else if (screen == 1) {
    tab.chooseShape();
    selectShape();
    write("Select a shape for your spiral!", width/2, int(height/1.1));
  } 
  
  else if (screen==2) {
    tab.chooseCP();
    colourp();
    write("Select a colour pallete!", width/2, int(height/1.1));
  } 
  else if (screen==3) {

    background(0);
    b.drawSpiral(cPalette, angle, complexity, sh);
    tab.adjustSpiral();
  } 
  
  else if (screen == 5) {
    background(255, 202, 56);
    tab.chooseMandela();
    pushMatrix();
    {
      translate(width/2, height/2);
      for (int i = 0; i <= sections; i ++) {
        float turn = (2*PI)/sections;//tells us the angle of each section (all angles are the same since sections are equally divided)
        strokeWeight(thickness);
        if (width<height) {
          arc(0, 0, width*0.75, width*0.75, 0, (turn*i), PIE); //creates guidelines
        } 
        else {
          arc(0, 0, height*0.75, height*0.75, 0, (turn*i), PIE);
        }
        noFill();
        stroke(50);
      }
    }
    popMatrix();
    write("Move the sliders to your liking!", width/2, int(height/10.5));
    write("Press next when you are done!", int(width/2), int(height/1.05));
  } 
  
  else if (screen == 6) {
    background(0);
    if (mousePressed)
    {
      screen =  screen + 1;
    }
  } 
  
  else if (screen == 7) {
    translate(-width/2, -height/2);
    a.canvas(sections);
    a.mDrawing(thickness, sections, r1, g1, b1);
    tab.mandelaButtons();
  }
}
