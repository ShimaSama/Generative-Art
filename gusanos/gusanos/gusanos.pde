
float Size = 200;
float sw,alpha;
float yStep = 10;
float one,two,three;
int colorsito;
boolean hey;

void setup(){
  size(800,800);
  colorMode(HSB,255);
  colorsito=0;
  
 
}

void draw(){
 //background(#C0E9EF);
  background(242,37,42);
 //background(208,100,200);
 
 //mouseX = constrain(mouseX,10,width); //constrain(amt, low, high)
 //mouseY = constrain(mouseY,10,height);
 
 noFill();
 //stroke(20);
 //stroke(26,93,83);
 
 for(float y=+Size/2; y<height-Size/2; y+=yStep){
   sw = map(sin(radians(y+alpha)),-1,1,2,yStep);
   strokeWeight(sw);
   one = map(colorsito,0,width,150,260);
   two = map(y,0,height,0,100);
   stroke(one,two,100);
   
   for(float tina=Size/2; tina<width+Size;tina+=Size){
     arc(tina,y,Size/2,Size/2,0,PI);//arc(a, b, c, d, start, stop)
   }
   sw = map(sin(radians(y-alpha)),-1,1,2,yStep);
   strokeWeight(sw);
   for(float x=0; x<width+Size; x+=Size){
     arc(x,y,Size/2,Size/2,PI,TWO_PI); 
     
    }

    
 }
 if(colorsito==600) hey=false;
 else if(colorsito==0) hey=true;
 
 if(hey) colorsito+=5;
 else colorsito-=5;
 alpha+=5;
}
