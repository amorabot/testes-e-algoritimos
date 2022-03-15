PVector pos;
PVector vel;

void setup(){
  size(640,460);
  //declarar os novos PVector
  pos = new PVector(width/2,height/2);
  vel = new PVector(2.5,5);
}

void draw(){
  background(200);
  //Somar a velocidade à posição vetorialmente
  pos.add(vel);
  //check de colisão
  if((pos.x > width) || (pos.x < 0)){
    vel.x = vel.x*-1;
  }
  if((pos.y > height) || (pos.y < 0)){
    vel.y = vel.y*-1;
  }
  //renderizar um circulo nas posições
  stroke(0);
  fill(175);
  ellipse(pos.x,pos.y,16,16);
}





//class PVector {
 
//  float x;
//  float y;
 
//  PVector(float x_, float y_) {
//    x = x_;
//    y = y_;
//  }
  
//  void add(PVector v) {
//    y = y + v.y;
//    x = x + v.x;
//  }
//}
