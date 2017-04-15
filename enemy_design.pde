
class enemy_design{
  
  
   enemy_design(){
     
   }
   
   public void enemyInMove(int x,int y){
         pushStyle();
       fill(13, 149, 2);
       noStroke();
       //ellipse(width/2, height/2 + 30, 27, 35);
       ellipse(x, y, 27, 35);
       //fill(5, 129, 39);
       //ellipse(width/2 - 8, height/2 + 50, 25, 10);
       ellipse(x-8, y+20, 25, 10);
       
       
       ellipse(x-23, y+20, 25, 8);
       //ellipse(width/2 - 12, height/2 + 50, 25, 7);
       ellipse(x-20, y+20, 25, 7);
       
       
       ellipse(x-18, y+20, 25, 7);
       ellipse(x-20, y+20, 25, 6);
       ellipse(x-20, y+20, 25, 6);
       ellipse(x-22, y+20, 25, 5);
       ellipse(x-21, y+20, 25, 4);
       ellipse(x-24, y+20, 25, 2);
       ellipse(x-23, y+20, 25, 3);
       ellipse(x-24, y+20, 25, 2);
       ellipse(x-24, y+20, 25, 2);
       ellipse(x-23, y+20, 25, 3);
       ellipse(x, y-20, 15, 25);
       popStyle();
       
       fill(245, 0, 20);
       //eyes
       ellipse(x-2-4, y-23, 4, 4);
       ellipse(x-2+4, y-23, 4, 4);
       
       fill(137, 91, 7); 
       fill(0);
    //   triangle(x-7, y-3, x-4, y-45, x-1 , y-33);
       triangle(x+1, y-33, x+4, y-45, x+7 , y-33);
       
       
       
      // fill(245, 0, 20);
       pushStyle();
       stroke(245, 0, 20);
       strokeWeight(2);
       ///line on th horn
       line(x-6, y-37, x-3, y-37);
       line(x+2, y-37, x+5, y-37);
       popStyle();
       //rect(width/2 - 5, height/2 - 7, 2, 2);
       fill(0);
       pushStyle();
       noStroke();
       arc(x, y-30, 13, 10 ,180, 360);
       popStyle();
       
       
       line(x-4, y-18, -146, 482);
       fill(255);
       triangle(x-4, y-18, x-2, y-14, x, y-18);
       triangle(x, y-18, x-2, y-14, x+4, y-18);
       fill(150, 150, 150); 
       
       pushStyle();
       strokeWeight(5);
       line(x-15, y-7, x-22, y+8);
       line(x-14, y-7, x-22, y+8);
       popStyle();
       
       pushStyle();
       strokeWeight(2);
       line(x-16, y+25, x+40, y-15);
       popStyle();
       triangle(x+35, y-17, x+50, y-30, x+45, y-15);
   }
   
   
   void temp(){
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
    
}