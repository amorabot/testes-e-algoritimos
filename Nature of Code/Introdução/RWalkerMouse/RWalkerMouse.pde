Walker w;
int sum0 = 0;
int sum1 = 0;
void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}

class Walker {
  int x;
  int y;
  Walker() {
    x = width/2;
    y = height/2;
  }
  void step() {
    int r = int(random(2));
    int stepx = int(random(2))-1;
    int stepy = int(random(2))-1;
    if (r == 0) {
      sum0++;
    } else {
      sum1++;
    }
    println("0: ", sum0, " ", "1: ", sum1," ", "Relação: ", (float)(sum0+1)/(sum1+1));
    if (r == 0) {
      if (x<mouseX) {
        x++;
      } else if (x>mouseX) {
        x--;
      } else {
        r=1;
      }
      if (y<mouseY) {
        y++;
      } else if (y>mouseY) {
        y--;
      } else {
        r=1;
      }
    } else {
      x += stepx;
      y += stepy;
    }
  }
  void display() {
    stroke(0);
    point(x, y);
  }
}
