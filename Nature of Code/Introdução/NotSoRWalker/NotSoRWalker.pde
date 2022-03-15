Walker w;
void setup() {
  size(640, 360);
  w = new Walker();
  background(200);
}
void draw() {
  w.step();
  w.render();
}
class Walker {
  int x;
  int y;
  Walker() {
    x = width/2;
    y = height/2;
  }
  void step() {
    float stepsize = customRandom();
    float stepx = random(-stepsize, stepsize+1);
    float stepy = random(-stepsize, stepsize+1);
    //println(stepx, stepy);
    x += stepx;
    y += stepy;
  }
  void render() {
    stroke(2);
    point(x, y);
  }
}

float customRandom() {
  while (true) {
    float n1 = random(1);
    float prob = pow(n1, 2);
    float n2 = random(1);
    if (n2<prob) {
      return(5*n1);
    }
  }
}
