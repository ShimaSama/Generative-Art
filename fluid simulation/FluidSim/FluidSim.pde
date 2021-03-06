
final int N = 128; //final = value is const and cant be changed
final int iter = 16;
final int SCALE=5;
float t=0;
Fluid fluid;

void settings(){
  size(N*SCALE,N*SCALE);
  fluid = new Fluid(0.2,0,0.0000001);
}

void setup(){
  
}
 //void mouseDragged(){ 

//}
void draw(){
  background(0);
  int cx = int(0.5*width/SCALE);
  int cy=int(0.5*height/SCALE);
  for(int i =-1; i<=1;i++){
    for(int j =-1; j<=1;j++){
    fluid.addDensity(cx+i,cy+j,random(100,500));
    }
  }
  
  float angle = noise(t) * TWO_PI*2;
  PVector v = PVector.fromAngle(angle);
  v.mult(0.2);
  t+=0.01;
  fluid.addVelocity(cx,cy,v.x,v.y);
  
  fluid.step();
  fluid.renderD();
  fluid.renderV();
  fluid.fadeD();
  
}
