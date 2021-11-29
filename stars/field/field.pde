Star[] stars= new Star[800];

float speed;

public void settings(){
  size(600,600);
}
void setup(){
  
  
  for(int i=0; i< stars.length; i++){
    stars[i] = new Star();
  }
}

void draw(){
  speed=5;
 // speed= map(mouseX,0,width,0,50);
  background(0,0,50);
  translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++) {
      
    
    stars[i].update();
    stars[i].show();
  }
  
}
