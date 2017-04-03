//after 5 consecutive hits then a stronger cannon shot
//add menu
//add boss
//add moving sharks
//possible moving clouds with different daytime settings

PImage pm;

void setup(){
  size(1000, 600);
  pm = loadImage("sky.jpg");
  image(pm, 0, 0, width, height);
  smooth();
}


void draw(){
  
  Castle cas = new Castle();
  Cannon can = new Cannon();
  Environment en = new Environment();
  
  smooth();
  
  can.display();
  cas.display();
  en.display();
   
}