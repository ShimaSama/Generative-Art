//  #f8c5d4,   #e4aea5,   #98e2cf,   #62cbd5,   #5a77a8

Drop[] drops = new Drop[400];

void setup(){
 
  size(640,360);
  for(int i=0; i<drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw(){
   background( #5a77a8);
   for(int i=0; i<drops.length-4; i+=4) {
    drops[i].fall();
    drops[i].show(#f8c5d4);
    
     drops[i+1].fall();
    drops[i+1].show(#62cbd5);
    
     drops[i+2].fall();
    drops[i+2].show(#98e2cf);
    
     drops[i+3].fall();
    drops[i+3].show(#98e2cf);
    
     drops[i+4].fall();
    drops[i+4].show(#e4aea5);
  }
  
}
