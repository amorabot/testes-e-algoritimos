import java.util.*;

Random generator;
 
void setup() {
  size(640,360);
  generator = new Random();
  
}
void draw() {
//Asking for a Gaussian random number. (Note nextGaussian() returns a double and must be converted to float.)
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 320;
//sd era previamente 1, num é o número que representa a posição horizontal no gráfico(distância até a média, em desvios padrão) e mean é o posicionamento centro da gaussiana(previamente 0)
  float x = sd * num + mean;
  
  noStroke();
  fill(255,10);
  ellipse(x,180,16,16);
}
