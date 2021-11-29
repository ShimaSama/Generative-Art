float radius = 0;
float angle=0;
 void setup(){
  size(200,200);
  strokeWeight(1);
 }
 void draw(){
   background(105, 72, 115);
   translate(width/2,height/2); 
   rotate(radius);
 
  for(int x=10; x>=0; x--) {
   float c = map(x, 0, 10, 150, 256);
    stroke(133,c,157);
    line(0-(x*4)*sin(angle)-width/2, 5*x*cos(angle)-height/2-40, 220-width/2, 220-(10*x)*sin(angle)-height/2);
   
  }
  radius+=radians(1);
  angle+= radians(8);
  
  
 }
