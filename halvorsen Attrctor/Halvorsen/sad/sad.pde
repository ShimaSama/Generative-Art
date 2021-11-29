import peasy.*;
float x=0.1;
float y =0.1;
float z =0.1;

float a = 1.4;


ArrayList<PVector> points = new ArrayList<PVector>(); //para guardar points

PeasyCam cam;

void setup(){
   size(800,600,P3D); 
   colorMode(HSB);
   cam = new PeasyCam(this, 500);
  
}
void draw(){
  background(0);
    float dt = 0.001; //para q sea mas cintinuo i no puntos separados
    float dx = (-(a * x) -(4*y) -(4*z) -(y*y))*dt;
    float dy = (-(a*y) - (4*z) - (4*x)-(z*z))*dt;
    float dz = (-(a*z)-(4*x)-(4*y)-(x*x))*dt;
    x = x + dx;
    y = y + dy;
    z = z + dz;
    
    points.add(new PVector(x,y,z));
    translate(0,0,-80);
   // translate(width/2,height/2);
    stroke(255);
    scale(200);
    noFill();
    float hue=0;
    beginShape(); //para q se junten los puntos
    for(PVector v: points){ //pintar puntos cada vez
    stroke(hue,255,255);
      vertex(v.x,v.y,v.z);
      hue+=0.5;
      if(hue> 255) hue=0;
    }
    endShape();
   // println(x,y,z);
}
