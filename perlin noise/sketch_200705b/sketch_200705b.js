var inc = 0.1;
var scl=10;
var cols,rows;
var zoff=0;
var fr;
var particles = [];
var flowfield =[];

function setup() {
  createCanvas(600,400);
  background(255);
   cols = floor(width/scl);
   rows = floor(height/scl);
   fr = createP('');
   flowfield = new Array(cols*rows);
   
   for(var i=0; i<2500; i++){
   particles[i] = new Particle();
   
   }
}



function draw() {
  var yoff=0;
  
  
  for(var y=0; y< rows; y++){
      var xoff=0;
      for(var x=0; x <cols; x++){
         var index = (x+ y  * cols);
         flowfield[index]=v; //stored vectors in an array
         var angle = noise(xoff,yoff,zoff)* TWO_PI *4;
         var v = p5.Vector.fromAngle(angle);  //vector from angle
         v.setMag(1); //how exact is following the path
         xoff +=inc;
        // strokeWeight(1);
         //stroke(0,50);
         //push();
       //  translate(x*scl,y*scl);
       //  rotate(v.heading()); 
        // line(0,0,scl,0);
       //  pop();
      }
      yoff += inc;
      zoff +=0.0003;
  }
  for(var i=0; i<particles.length; i++){
    particles[i].follow(flowfield);
    particles[i].update();
    particles[i].edges();
    particles[i].show();
    
  }
  fr.html(floor(frameRate())); //this is a function that gives u the framerate

}
