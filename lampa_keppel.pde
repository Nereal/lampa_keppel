float x;
float y;
float r;
boolean b;
PImage kep; 


void setup () {
  size(500, 500);
  background(0, 0, 0);
  noStroke();
  r=25;
  x=width/2;
  y=height-height/15;
  b=false;
  kep = loadImage("hatter.png");
}

void mouseClicked(){
  if ((abs(x-mouseX)<25)&&(abs(y-mouseY)<25)) {
    if (b) {
      b=false;   
    }
    else if (!b) {
      b=true;   
    }
  }
}


void draw() {  
 if(b){
    fill(250, 240, 50);
    quad(width/2+100, 0, width/2-100, 0, 0, height, width, height);
    //tint(250, 240, 50, 180);
    tint(255, 200);
    image(kep,0,0,width,height);
    fill(0, 0, 0);
    triangle(0,0,width/2-100, 0, 0, height);
    triangle(width/2+100, 0, width, 0, width, height);
 }
 if(!b){
    background(0, 0, 0);
 }
  fill(255, 50, 50);
  ellipse(x, y, r*2, r*2);
}