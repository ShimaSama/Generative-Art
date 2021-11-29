import peasy.*;
float x=0.1;
float y =0.1;
float z =0.1;

float a = 0.25;
float b  = 0.95;
float c = 0.6;
float d =3.5;
float e = 0.7;
float f =0.1;

float i;

ArrayList<PVector> points = new ArrayList<PVector>(); //para guardar points

PeasyCam cam;

void setup(){
   size(800,600,P3D); 
   colorMode(HSB);
   cam = new PeasyCam(this, 500);
}
void draw(){
  background(0);
  rotateY(i);
  i+=.0121;
    float dt = 0.01; //para q sea mas cintinuo i no puntos separados
   
    float dx = ((z-e)*x-d*y)*dt;
    float dy = (d*x+(z-e)*y)*dt;
    float dz = (c+(b*z)-((z*z*z)/3)-(x*x+y*y)*(1+a*z)+(f*z*x*x*x))*dt;
    x = x + dx;
    y = y + dy;
    z = z + dz;
    
    points.add(new PVector(x,y,z));
    translate(0,0,-80);
   // translate(width/2,height/2);
    stroke(255);
    strokeWeight(0.5);
    scale(10);
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
   //println(x,y,z);
    box(10);
}
