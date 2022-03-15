
void setup(){
  float xoff = 0;
  size(640,360);
    for(int x = 0; x<width;x++){
    float yoff = 0;
    for(int y = 0; y<height;y++){
     float p = map(noise(xoff,yoff),0,1,0,255);
      stroke(p);
      point(x,y);
      yoff += 0.01;
      println(x,y,p);
    }
    xoff += 0.01;
  }
}
