Walker w;
void setup() {
  size(640,360);
  background(200);
  w = new Walker();
}

void draw() {
  w.step();
  w.render();
}

class Walker {
  int x, y;

  int xoffX, xoffY;
  Walker() {
    xoffX = 0;
    xoffY = 10000;
    x = width/2;
    y = height/2;
  }
  void step() {
    float stepsizex = map(noise(xoffX),0,1,0,10);
    float stepsizey = map(noise(xoffY),0,1,0,10);
    float stepx = random(-stepsizex, stepsizex + 1);
    float stepy = random(-stepsizey, stepsizey + 1);
    x += stepx;
    y += stepy;
    xoffX += 0.01;
    xoffY += 0.01;
  }
  void render() {
    fill(0);
    stroke(2);
    point(x,y);
  }
}
