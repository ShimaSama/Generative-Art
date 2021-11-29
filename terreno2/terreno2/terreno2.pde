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

 //stroke(tina4,255,255);
// tina4+=1;
 //if(tina4>255)tina4=0;
 
 background(180,255,40);
   noStroke();
  // lights();
   fill(30,255,255);
   //translate(300,40,30);
   //sphere(30);
       //translate(-300,-40,0);
   ellipse(300,40,50,50);

 strokeWeight(1);
 ++frame;
 noFill();
  
  translate(width/2,height/2+50);
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for(int y=0; y<rows-1; y++){
   beginShape(TRIANGLE_STRIP);

   for(int x=0; x<cols; x++){
     
    if(tina[x][y]>20){
       stroke(100,255,255);
    }
    else{
      //if(x>25 && x<45 && y<15)  stroke(20,255,200);
      if(((((x-36)*(x-36))/70)+(((y-10)*(y-10))/25))<=1) stroke(20,255,200);
       else stroke(20,255,100);
    }
    vertex(x*scl, y*scl, tina[x][y]);
    vertex(x*scl, (y+1)*scl,tina[x][y+1]);
   }
    endShape();
  }
 
}
