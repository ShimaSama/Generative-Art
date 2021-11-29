PVector[] points = new PVector[50]; 

void setup(){
 size(400,400); 
 for (int i=0; i< points.length; i++){
   points[i] = new PVector(random(width),random(height),random(width));
 }
}

void draw(){
  
  
  
  loadPixels();
 for(int x=0; x<width; x++){
   for(int y=0; y<height ; y++){
     
     float[] distances = new float[points.length];
     for(int i=0; i<points.length; i++){
       PVector v = points[i];
       float z = frameCount % width; //looking at z sliced, like a scan
       float d = dist(x,y,z, v.x, v.y, v.z); //pone las distancias del pixel a todos los puntos
      
       distances[i]=d;
     }
    
     float[] sorted = sort(distances);
     float r = map(sorted[0],0,150,0,255); //coje el punto de mas cerca
     //ademas mapea el resultado para q este entre 0 i 255
     float g = map(sorted[1],0,150,255,0); 
     float b = map(sorted[2],0,200,255,0); 
     int index = x+ y* width;
     pixels[index]= color(r,g,b);
     
   }
 }
 updatePixels();
 
 //saveFrame();
 //noLoop();
 //for(PVector v : points){
   //stroke(0,255,0);
  // noStroke();
  // strokeWeight(8);
  // point(v.x, v.y);
   //v.x +=random(-2,2);
   //v.y +=random(-2,2);
 //}
}
