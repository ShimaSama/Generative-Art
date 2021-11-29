String[] tina = {

  "♫",
  "♪",
  "♥",
  "☺"

};
int tinatina=0;
void setup(){
  size(400,400);
  background(0);
  stroke(255);
  fill(255);
  textSize(80);
}
void draw(){
 tinatina++;
  if(tinatina==4) tinatina =0;
  if(mousePressed){
   // fill(keyPressed ? 255 : 0);
   if ( mouseButton == LEFT) 
    fill(0);
   else if (mouseButton == RIGHT) 
    fill(255);
  
  // text(char(int(random(65,90))),mouseX-30, mouseY+40);
    text(tina[tinatina], mouseX-30, mouseY+40);
  }
  
    filter(BLUR,3);
  filter(THRESHOLD);
}
