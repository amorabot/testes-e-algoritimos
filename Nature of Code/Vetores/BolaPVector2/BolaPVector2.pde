Mover m;
void setup() {
  size(640, 360);
  m = new Mover();
}
void draw() {
  background(255);
  m.checkColisao();
  m.update();
  m.render();
}

class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  Mover() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(random(-2, 2), random(-2, 2));
    acc = new PVector(-0.001,0.01);
  }
  void update() {
    vel.add(acc);
    println(vel.mag());
    vel.limit(10);
  //void limit(float limite máximo) {
  //  if (vel.mag() > limite) {
  //    vel.setMag(limite);
  //  }
  //}
    pos.add(vel);
  }
  void render() {
    noStroke();
    fill(175);
    ellipse(pos.x, pos.y, 16, 16);
  }
  void checkColisao() {
    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x <0) {
      pos.x = width;
    }
    if (pos.y > height) {
      pos.y = 0;
    } else if (pos.y < 0) {
      pos.y = height;
    }
  }
}
