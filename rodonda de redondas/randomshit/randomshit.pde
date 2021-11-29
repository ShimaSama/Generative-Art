int colArrayCounter=0;
color[] colArray = {

  color(189,147,145),
  color(173,186,189),
  color(145,183,199), 
  color(191,171,203),
// color(0,0,0),
 color(0,0,0),
  color(110,180,209),
  color(108,190,237)

};

void setup(){
  size(900,900);
  surface.setLocation(987,70); //position of skecth
 // noLoop();
  mouseX = 10;
  frameRate(10);
}

void draw(){
  background(#1B1117);
  
  translate(width/2, height/2);
  float rStep = 15; //control the number
  float rMax = 500;
  float rMin = mouseX;
  
  for(float r=rMin; r<rMax; r+=rStep){
    
    float c = 2*PI*r; //the number of circles for each ring radius
    float cSegment = map(r,0,rMax, rStep*3/4,rStep/2);
    float aSegment = floor(c/cSegment); //one for each seg
    float ellipseSize = map(r, 0, rMax, rStep*3/4-1, rStep/4); 
   
   
    for(float a=0; a<360; a+=360/aSegment){
      
      colArrayCounter++;
      if(colArrayCounter>5) colArrayCounter =0;
      fill(colArray[colArrayCounter]);
      pushMatrix(); // saves the current coordinate system to the stack 
      rotate(radians(a));
      ellipse(r,0,ellipseSize,ellipseSize);
      popMatrix(); // restores the prior coordinate
    }
  }
}

void keyPressed(){
  if (key==' '){
    background(#282828);
    redraw();
  }
}
