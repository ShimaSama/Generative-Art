void setup(){
  size(600,600);
  background(0);
}

float t,i,p,g,h;

void draw(){
 t+=.01;
 //clear();
 for(i = 0; i<1e4; i+=5){
    p = i/1e4;
    noStroke();
    fill(-1,50);
    push();
    circle(lerp(300 + 200*sin(h = t-512*p),300+200*cos(g=t-512*noise(p)),p),lerp(300+200*cos(h),300+200*sin(g),p),1+cos(9*TAU*p));
    pop();
 }
}
