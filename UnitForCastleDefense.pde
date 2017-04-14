
void setup(){
  size(1500, 600);
  background(255);
  rectMode(RADIUS);
}

void draw(){

  //quad(30, 31, 50, 20, 50, 45, 35, 55);    
   
   pushStyle();
   fill(13, 149, 2);
   noStroke();
   ellipse(width/2, height/2 + 30, 27, 35);
   //fill(5, 129, 39);
   ellipse(width/2 - 8, height/2 + 50, 25, 10);
   ellipse(width/2 - 15, height/2 + 50, 25, 8);
   ellipse(width/2 - 12, height/2 + 50, 25, 7);
   ellipse(width/2 - 10, height/2 + 50, 25, 7);
   ellipse(width/2 - 12, height/2 + 50, 25, 6);
   ellipse(width/2 - 12, height/2 + 50, 25, 6);
   ellipse(width/2 - 14, height/2 + 50, 25, 5);
   ellipse(width/2 - 13, height/2 + 50, 25, 4);
   ellipse(width/2 - 16, height/2 + 50, 25, 2);
   ellipse(width/2 - 15, height/2 + 50, 25, 3);
   ellipse(width/2 - 16, height/2 + 50, 25, 2);
   ellipse(width/2 - 16, height/2 + 50, 25, 2);
   ellipse(width/2 - 15, height/2 + 50, 25, 3);
   ellipse(width/2, height/2 + 10, 15, 25);
   popStyle();
   
   fill(245, 0, 20);
   ellipse(width/2 - 4, height/2 + 7, 4, 4);
   ellipse(width/2 + 4, height/2 + 7, 4, 4);
   fill(137, 91, 7); 
   fill(0);
   triangle(width/2 -7, height/2 - 3, width/2 -4, height/2 - 15, width/2 -1 , height/2 - 3);
   triangle(width/2 +1, height/2 - 3, width/2 +4, height/2 - 15, width/2 +7 , height/2 - 3);
   
   
   
  // fill(245, 0, 20);
   pushStyle();
   stroke(245, 0, 20);
   strokeWeight(2);
   line(width/2 - 6, height/2 - 7, width/2 - 3, height/2 - 7);
   line(width/2 +2, height/2 - 7, width/2 +5, height/2 - 7);
   popStyle();
   //rect(width/2 - 5, height/2 - 7, 2, 2);
   fill(0);
   pushStyle();
   noStroke();
   arc(width/2, height/2, 13, 10 ,180, 360);
   popStyle();
   
   
   line(width/2 - 4, height/2 + 12, width/2 + 4, height/2 + 12);
   fill(255);
   triangle(width/2 - 4, height/2 + 12, width/2 - 2, height/2 + 16, width/2, height/2 + 12);
   triangle(width/2, height/2 + 12, width/2 + 2, height/2 + 16, width/2 + 4, height/2 + 12);
   fill(150, 150, 150); 
   
   
   pushStyle();
   strokeWeight(5);
   line(width/2 - 15, height/2+23, width/2 - 27.5, height/2 + 38);
   line(width/2 + 14, height/2+23, width/2 + 27.5, height/2 + 38);
   popStyle();
   
   pushStyle();
   strokeWeight(2);
   line(width/2 + 16, height/2+55, width/2 + 40, height/2 + 15);
   popStyle();
   triangle(width/2 + 35, height/2 + 13, width/2 + 50, height/2, width/2 + 45, height/2 + 15);
   
   
   
   
   
   //Bottom is where the real unit should be starting at
   
   pushStyle();
   fill(13, 149, 2);
   noStroke();
   //ellipse(width/2, height/2 + 30, 27, 35);
   ellipse(-150, 500, 27, 35);
   //fill(5, 129, 39);
   //ellipse(width/2 - 8, height/2 + 50, 25, 10);
   ellipse(-158, 520, 25, 10);
   
   
   ellipse(-173, 520, 25, 8);
   //ellipse(width/2 - 12, height/2 + 50, 25, 7);
   ellipse(-170, 520, 25, 7);
   
   
   ellipse(-168, 520, 25, 7);
   ellipse(-170, 520, 25, 6);
   ellipse(-170, 520, 25, 6);
   ellipse(-172, 520, 25, 5);
   ellipse(-171, 520, 25, 4);
   ellipse(-174, 520, 25, 2);
   ellipse(-173, 520, 25, 3);
   ellipse(-174, 520, 25, 2);
   ellipse(-174, 520, 25, 2);
   ellipse(-173, 520, 25, 3);
   ellipse(-150, 480, 15, 25);
   popStyle();
   
   fill(245, 0, 20);
   ellipse(-154, 477, 4, 4);
   ellipse(-154, 477, 4, 4);
   fill(137, 91, 7); 
   fill(0);
   triangle(-157, 497, -154, 455, -151 , 467);
   triangle(-149, 467, -146, 455, -143 , 467);
   
   
   
  // fill(245, 0, 20);
   pushStyle();
   stroke(245, 0, 20);
   strokeWeight(2);
   line(-156, 463, -153, 463);
   line(-148, 463, -145, 463);
   popStyle();
   //rect(width/2 - 5, height/2 - 7, 2, 2);
   fill(0);
   pushStyle();
   noStroke();
   arc(-150, 470, 13, 10 ,180, 360);
   popStyle();
   
   
   line(-154, 482, -146, 482);
   fill(255);
   triangle(-154, 482, -152, 486, -150, 482);
   triangle(-150, 482, -148, 486, -146, 482);
   fill(150, 150, 150); 
   
   
   pushStyle();
   strokeWeight(5);
   line(-165, 493, -177.5, 508);
   line(-136, 493, -177.5, 508);
   popStyle();
   
   pushStyle();
   strokeWeight(2);
   line(-134, 525, -110, 485);
   popStyle();
   triangle(-115, 483, -100, 470, -105, 485);
   
}