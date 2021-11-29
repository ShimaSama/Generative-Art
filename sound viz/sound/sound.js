

var song;

function preload(){
  
  soundFormats('mp3');
  song = loadSound("tina.mp3");
}

function setup() {
  createCanvas(200,200);
  song.play();
 
}

function draw() {
  background(0);
}
