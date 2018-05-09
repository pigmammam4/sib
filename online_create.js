var x;
var create;
var y;
var k;

 
function preload() {
  create = loadImage('creative.jpg');
}

function setup() {
  createCanvas(600,300);
  x = 0;
  y = 0;
  frameRate(45);
  image(create,0,0,600,300);
}

 

function draw() {

  translate(width/2 + 25,height/2 -15);
   if(mouseButton == LEFT) {
  noStroke();
  fill(255,255,0,4);
  rotate(x);
  y += 5;
  ellipse(1,0,y,y);
  if( y >= 400) {
    fill(255,0,0,50);
    ellipse(1,0,y-400,y-400);
    y+=5;
    
      if( y >= 1500) {
        image(create,-width/2 + 50 + k, -height/2 +50 - k);
        ellipse(1,0,y-400,y-400);
          if( y >= 1600) {
            k += 3;
          }
      }
    
  }
  x += radians(360);
  }
}
