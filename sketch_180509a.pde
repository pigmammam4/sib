int x;
PImage create;
float y;
float k;

 

void setup() {

  size(600,300);

  x = 0;

  y = 0;

  frameRate(45);

  create = loadImage("creative.jpg");

  image(create,0,0,600,300);

}

 

void draw() {

  translate(width/2 + 25,height/2 -15);
  
  if(mouseButton == LEFT) {
  pushMatrix();
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
  popMatrix();
  }
}
