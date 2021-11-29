int cols, rows;
int scl =25;
int w=1800;
int h=1400;
float tina2=0;
float[][] tina;
color tina3;
int frame=0;
color tina4=0;
//float hue=0.1;


void setup(){
 size(600,600, P3D);
 cols = w/scl;
 rows= h/scl;
 colorMode(HSB,255);
 
 tina = new float[cols][rows];
 
  
}

void draw(){
 
  tina2-=0.1;
  float yoff=tina2;
 for(int y=0; y<rows; y++){
   float xoff=0;
   for(int x=0; x<cols; x++){
     tina[x][y]=map(noise(xoff,yoff),0,1,-100,100);
     xoff +=0.2;
   }
   yoff+=0.2;
 }
 /*if(frame==10){
   tina3=color(random(255),random(255),random(255));
   frame=0;
 }*/
 stroke(tina4,255,255);
 tina4+=1;
 if(tina4>255)tina4=0;
 background(0);

 strokeWeight(1);
 ++frame;
 noFill();
  
  translate(width/2,height/2+50);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for(int y=0; y<rows-1; y++){
   beginShape(TRIANGLE_STRIP);

   for(int x=0; x<cols; x++){
     
    vertex(x*scl, y*scl, tina[x][y]);
      /* tina3=color(random(255),random(255),random(255));
    stroke(tina3);*/
    vertex(x*scl, (y+1)*scl,tina[x][y+1]);
   }
    endShape();
  }
}
