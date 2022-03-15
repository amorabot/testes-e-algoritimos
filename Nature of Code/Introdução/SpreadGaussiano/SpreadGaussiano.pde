import java.util.*;

Random generatorx;
 Random generatory;
void setup() {
  size(640,360);
  background(60);
  generatorx = new Random();
  generatory = new Random();
  
}
void draw() {
  float numx = (float) generatorx.nextGaussian();
  float numy = (float) generatory.nextGaussian();
  //println(numx, " ", numy);
  float sdx = 60;
  float sdy = 32;
  float meanx = 320;
  float meany = 180;
  float x = sdx * numx + meanx;
  float y = sdy * numy + meany;
  
  noStroke();
  fill(255,10);
  ellipse(x,y,16,16);
}
