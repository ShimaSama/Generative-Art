import peasy.*;
float x=0.1;
float y =0.1;
float z =0.1;

float a = 10;
float b  = 28;
float c = 8.0/3.0;

ArrayList<PVector> points = new ArrayList<PVector>(); //para guardar points

PeasyCam cam;

void setup(){
   size(800,600,P3D); 
   colorMode(HSB);
   cam = new PeasyCam(this, 500);
  
}
void draw(){
  background(0);
    float dt = 0.01; //para q sea mas cintinuo i no puntos separados
    float dx = (a * (y - x))*dt;
    float dy = (x * (b - z) - y)*dt;
    float dz = (x * y - c * z)*dt;
    x = x + dx;
    y = y + dy;
    z = z + dz;
    
    points.add(new PVector(x,y,z));
    translate(0,0,-80);
   // translate(width/2,height/2);
    stroke(255);
    scale(5);
    noFill();
    float hue=0;
    beginShape(); //para q se junten los puntos
    for(PVector v: points){ //pintar puntos cada vez
    stroke(hue,255,255);
      vertex(v.x,v.y,v.z);
     // PVector offset = PVector.random3D();
     // offset.mult(0.1*sin(30));
 //     v.add(v.mult(0.1*sin(30))); esto es si quieres un palo q se mueve
      
      
      hue+=0.5;
      if(hue> 255) hue=0;
    }
    endShape();
   // println(x,y,z);
}
