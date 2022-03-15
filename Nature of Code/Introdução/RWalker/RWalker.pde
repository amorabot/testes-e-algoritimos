Walker w;

void setup(){
 size(640,360);
 w = new Walker();
 background(255);
}

void draw(){
 w.step();
 w.display();
}

class Walker{
 int x;
 int y;
 Walker() {
    x = width/2;
    y = height/2;
  }
 void step(){
   int stepx = int(random(6))-1;
   int stepy = int(random(6))-1;
   x += stepx;
   y += stepy;
 }
 void display() {
    stroke(0);
    point(x,y);
  }
}
