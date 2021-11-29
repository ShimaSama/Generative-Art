

int howmany=0;
void setup(){
  size(400,400);
  background(0);
  stroke(255);
  fill(255);
  textSize(80);

}
void draw(){

  howmany++;
  if(howmany>350) howmany =0;
  if(howmany>=175) stroke(0);
  else stroke(255);
  
   strokeWeight(random(10)); 
   line(0, random(height), width, random(height));
  
    filter(BLUR,3);
  filter(THRESHOLD);
}
