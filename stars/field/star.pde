class Star {
  
  float x;
  float y;
  float z;
  float pz;
  color tina;
  
  Star(){
    
    x = random(-width/2, width/2);
    y= random(-height/2, height/2);
    z=random(width/2);
    pz = z;
    tina =color(random(255),random(255), random(255),random(255));
    
  }
  
  void update(){
    
    z=z-speed;
    
    if(z<1){
      z=width/2;
      x = random(-width/2, width/2);
      y= random(-height/2, height/2);
      pz = z;
      
    }
  }
  
  
  void show(){
    fill(tina);
    noStroke();
    
    float sx= map(x/z,0,1,0,width/2); //positions
    float sy= map(y/z,0,1,0,height/2);
    
    float r =map(z,0, width/2,30,0); //size
    ellipse(sx,sy,r,r);
    
    float px=map(x/pz,0,1,0,width/2); //previous position
    float py=map(y/pz,0,1,0,height/2);
    
    pz=z;
    
    stroke(tina);
    strokeWeight(5);
    line(px,py,sx,sy);
  }

}
