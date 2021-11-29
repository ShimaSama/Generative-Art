int tina=10;
float t;

color tina4=0;
color tina5=255;

void setup(){
  colorMode(HSB,255);
 background(20);
 size(1000,1000);
}
void draw(){
  scale(2);
  translate(250,250);
  //translate(width/2,width/2);
  background(20);
  stroke(tina4,255,255);
   tina4+=1;
   if(tina4>255)tina4=0;

  
  strokeWeight(5);
  //translate(width/2,width/2);
  
  for(int i=0; i< tina+2; i++){
    line(x1(-t+i*2),y1(-t+i*2),x2(t+i),y2(t+i));
   }
   stroke(tina5,255,255);
   tina5-=1;
   if(tina5<0)tina5=255;
   
   for(int i=0; i< tina+10; i++){
    line(x1(t+i),y1(t+i),x2(-t+i),y2(-t+i));
   }
  t+=0.5;

  

}
float x1(float t){
 return sin(t/10) *100 + sin(t/5)*20; 
}

float y1(float t){
 return cos(t/10) *100; 
}
float x2(float t){
 return sin(t/10) *200 + sin(t)*2; 
}

float y2(float t){
 return cos(t/20) *200 + cos(t/12)*20; 
}
