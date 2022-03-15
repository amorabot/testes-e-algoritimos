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
  PVector pos;
  PVector offset;
  Walker() {
    pos = new PVector(width/2,height/2);
    offset = new PVector(0,10000);
  }
  void step() {
    PVector stepsize = new PVector(map(noise(offset.x),0,1,0,6), map(noise(offset.y),0,1,0,6));
    int rx = (int)random(-2,2);
    int ry = (int)random(-2,2);
    println(stepsize.x,stepsize.y);
    //ou pos.add(stepsize); (não inclui a multiplicação por escalar)
    pos.x += stepsize.x*rx;
    pos.y += stepsize.y*ry;
    offset.x += 0.01; 
    offset.y += 0.01;
  }
  void render() {
    fill(0);
    stroke(2);
    point(pos.x,pos.y);
  }
}
