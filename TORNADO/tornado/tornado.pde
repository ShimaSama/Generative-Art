
int amount = 300;
int[] x = new int[amount];
int[] y = new int[amount];
int[] z = new int[amount];
color[] tina = new color[amount];
int[] y2 = new int[50];

void setup(){
 size(500,400,P3D);
 background(0);
 noFill();
 colorMode(HSB,255);
 for(int i = 0; i<amount; i++){
  x[i] = int(random(-150, 150));
  y[i] = int(random(-150, 150));
  z[i] = int(random(-150, 150));
  if(i<50) y2[i] = int(random(-50,50));
 // tina[i] = int(random(0,255));
  
 }
 
}

void draw(){
 
 translate(width/2,height/2);
 rotateY(frameCount / 100.0 );
 strokeWeight(2);
 for(int i = 0; i<amount; i++){
   if(y[i]>=0){
     stroke(map(y[i],0,150,255,190),255,255);
   }
  // else stroke(255,255,255);
   else  stroke(map(y[i],-150,0,190,255),255,255);
  point(x[i],y[i],z[i]);
  if(i<50)  point(x[i],y2[i],z[i]);
 }
 strokeWeight(7);
 stroke(40,255,255);
 point(125,0,100);
 filter(BLUR,0.75);
 
}
