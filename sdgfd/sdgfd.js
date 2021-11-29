var tina = 10;
var t=0;
var tina4=0;
var tina5=255;


function setup() {
  colorMode(HSB,255);
  background(20);
  createCanvas(500, 500);
 }
function draw(){
  background(20);
  stroke(tina4,255,255);
  tina4++;
  if(tina4>255){
     tina4=0;
   }

  strokeWeight(5);
  translate(width/2,width/2);
  
  for(var i=0; i< tina+2; i++){
    line(x1(-t+i*2),y1(-t+i*2),x2(t+i),y2(t+i));
   }
   stroke(tina5,255,255);
   tina5-=1;
   if(tina5<0){
     tina5=255;
   }
   
   for(var j=0; j< tina+10; j++){
    line(x1(t+j),y1(t+j),x2(-t+j),y2(-t+j));
   }
  t+=0.5;

  
   
 /* line(10,10,-10,-10);
  for(var i=0; i< (tina+2); i++){
    line(-t+(i*2),-t+(i*2),t+i,t+i);
  }
  t+=0.5;
*/
}
function x1(t){
    return sin(t / 10) * 100 + sin(t / 5) * 20;
 }
function y1(t){
    return cos(t / 10) * 100;
 }
function x2(t){
    return sin(t / 10) * 200 + sin(t) * 2;
 }

function y2(t){
    return cos(t / 20) * 200 + cos(t / 12) * 20;
 }
