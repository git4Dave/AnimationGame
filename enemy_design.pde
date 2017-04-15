//x = -150, y = 500
class enemy_design{
  int angleOfRotation = 0;
  int angleOfRotation2 = 0;
  int modifyAngle = 5;
  int modifyAngle2 = 3;
  int highestAngle = 70;
  
   enemy_design(){
     
   }
   
   public void enemyInMove(int x,int y){
     
     pushStyle();              //torso and slug tail is made here
     fill(13, 149, 2);
     //fill(0);
     noStroke();
     ellipse(x, y, 27, 35);
     ellipse(x-10, y+17, 25, 10);
     
     
     ellipse(x-15, y+17, 25, 8);
     //ellipse(width/2 - 12, height/2 + 50, 25, 7);
     ellipse(x-12, y+17, 25, 7);
     
     
     ellipse(x-10, y+17, 25, 7);
     ellipse(x-12, y+17, 25, 6);
     ellipse(x-12, y+17, 25, 6);
     ellipse(x-14, y+17, 25, 5);
     
     ellipse(x-13, y+17, 25, 4);
     ellipse(x-16, y+17, 25, 2);
     
     ellipse(x-15, y+17, 25, 3);
     ellipse(x-16, y+17, 25, 2);
     ellipse(x-16, y+17, 25, 2);
     ellipse(x-15, y+17, 25, 3);
     ellipse(x-15, y+17, 25, 3);
     ellipse(x, y-20, 15, 25);
     popStyle();
     
     fill(245, 0, 20);
     ellipse(x-4, y-23, 4, 4);
     ellipse(x+4, y-23, 4, 4);
     fill(0);
     triangle(x-7, y-33, x-4, y-45, x-1 , y-33);
     triangle(x+1, y-33, x+4, y-45, x+7 , y-33);
     
     
       
    // fill(245, 0, 20);
     pushStyle();                        //facial features made here
     stroke(245, 0, 20);
     strokeWeight(2);
     line(x-6, y-37, x-3, y-37);
     line(x+2, y-37, x+5, y-37);
     popStyle();
     //rect(width/2 - 5, height/2 - 7, 2, 2);
     fill(0);
     pushStyle();
     noStroke();
     arc(x, y-30, 13, 10 ,180, 360);
     popStyle();
     
     line(x-4, y-18, x+4, y-18);
     fill(255);
     triangle(x-4, y-18, x-2, y-14, x, y-18);
     triangle(x, y-18, x+2, y-14, x+4, y-18);
     fill(150, 150, 150); 
     
     
     pushStyle();
     strokeWeight(5);
     stroke(0);
     line(x-15, y-7, x-27.5, y+8);
     //line(x+14, y-7, x-27.5, y+8);
     popStyle();
     drawAndMoveRightArm(x, y);
     //drawAndMoveRightArmOtherUnit(x, y);
     
     pushStyle();
     strokeWeight(2);
     //line(x+16, y+25, x+40, y-15);
     popStyle();
     //triangle(x+35, y-17, x+50, y-30, x+45, y-15);
   }
   
   public void enemyInMoveHarder(int x,int y){
     
     pushStyle();              //torso and slug tail is made here
     fill(0);
     noStroke();
     ellipse(x, y, 27, 35);
     ellipse(x-10, y+17, 25, 10);
     
     
     ellipse(x-15, y+17, 25, 8);
     //ellipse(width/2 - 12, height/2 + 50, 25, 7);
     ellipse(x-12, y+17, 25, 7);
     
     
     ellipse(x-10, y+17, 25, 7);
     ellipse(x-12, y+17, 25, 6);
     ellipse(x-12, y+17, 25, 6);
     ellipse(x-14, y+17, 25, 5);
     
     ellipse(x-13, y+17, 25, 4);
     ellipse(x-16, y+17, 25, 2);
     
     ellipse(x-15, y+17, 25, 3);
     ellipse(x-16, y+17, 25, 2);
     ellipse(x-16, y+17, 25, 2);
     ellipse(x-15, y+17, 25, 3);
     ellipse(x-15, y+17, 25, 3);
     ellipse(x, y-20, 15, 25);
     popStyle();
     
     fill(245, 0, 20);
     ellipse(x-4, y-23, 4, 4);
     ellipse(x+4, y-23, 4, 4);
     fill(0);
     triangle(x-7, y-33, x-4, y-45, x-1 , y-33);
     triangle(x+1, y-33, x+4, y-45, x+7 , y-33);
     
     
       
    // fill(245, 0, 20);
     pushStyle();                        //facial features made here
     stroke(245, 0, 20);
     strokeWeight(2);
     line(x-6, y-37, x-3, y-37);
     line(x+2, y-37, x+5, y-37);
     popStyle();
     //rect(width/2 - 5, height/2 - 7, 2, 2);
     fill(0);
     pushStyle();
     noStroke();
     arc(x, y-30, 13, 10 ,180, 360);
     popStyle();
     
     line(x-4, y-18, x+4, y-18);
     fill(255);
     triangle(x-4, y-18, x-2, y-14, x, y-18);
     triangle(x, y-18, x+2, y-14, x+4, y-18);
     fill(150, 150, 150); 
     
     
     pushStyle();
     strokeWeight(5);
     stroke(0);
     line(x-15, y-7, x-27.5, y+8);
     //line(x+14, y-7, x-27.5, y+8);
     popStyle();
     //drawAndMoveRightArm(x, y);
     drawAndMoveRightArmOtherUnit(x, y);
     
     pushStyle();
     strokeWeight(2);
     //line(x+16, y+25, x+40, y-15);
     popStyle();
     //triangle(x+35, y-17, x+50, y-30, x+45, y-15);
   }
   
   public void enemyBossInMove(int x,int y){
    
     y = y - 60;
   pushStyle();
   //fill(13, 149, 2);
   fill(0);
   noStroke();
   ellipse(x, y, 115, 148);
   //fill(5, 129, 39);
   //ellipse(width/2 - 43, height/2 + 102, 112, 44);
   //ellipse(width/2 - 43, height/2 + 102, 112, 44);
   ellipse(x - 48, y+70, 112, 40);
   ellipse(x - 45, y+70, 112, 39);
   ellipse(x - 43, y+70, 112, 39);
   ellipse(x - 45, y+70, 112, 37);
   ellipse(x - 45, y+70, 112, 37);
   ellipse(x - 47, y+70, 112, 35);
   ellipse(x - 46, y+70, 112, 34);
   ellipse(x - 48, y+70, 112, 34);
   ellipse(x - 47, y+70, 112, 34);
   ellipse(x - 46, y+70, 112, 35);
   stroke(0);
   ellipse(x, y-65, 35, 45);
   popStyle();
   
   fill(245, 0, 20);
   ellipse(x - 8, y-75, 8, 8);
   ellipse(x + 8, y-75, 8, 8);
   fill(137, 91, 7); 
   fill(0);
   triangle(x -11, y-22, x -6, y-45, x - 1, y-22); //FIX THIS!
   triangle(x +1, y-22, x +6, y-45, x +11 , y-22);
   
   
   
  // fill(245, 0, 20);
    fill(0);        //arc under horns
   pushStyle();
   noStroke();
   arc(x, y-25, 13, 10 ,180, 360);
   popStyle();
   
   pushStyle();         //red stripe in horns
   stroke(245, 0, 20);
   strokeWeight(2);
   line(width/2 - 9, height/2 - 58, width/2 - 4, height/2 - 58);
   line(width/2 + 4, height/2 - 58, width/2 +9, height/2 - 58);
   popStyle();
   //rect(width/2 - 5, height/2 - 7, 2, 2);
   
   
   line(width/2 - 8, height/2 - 35, width/2 + 8, height/2 - 35); //the teeth
   fill(255);
   triangle(width/2 - 4, height/2 -35, width/2 - 2, height/2 -21, width/2, height/2 -35);
   triangle(width/2, height/2 -35, width/2 + 2, height/2 -21, width/2 + 4, height/2 -35);
   triangle(width/2 - 8, height/2 -35, width/2 - 6, height/2 -21, width/2 - 4, height/2 -35);
   triangle(width/2 + 4, height/2 -35, width/2 + 6, height/2 -21, width/2 + 8, height/2 -35);
   triangle(width/2 - 6, height/2 -19, width/2 - 4, height/2 -33, width/2 -2, height/2 -19);
   triangle(width/2 - 2, height/2 -19, width/2, height/2 -33, width/2 +2, height/2 -19);
   triangle(width/2 +2, height/2 -19, width/2 +4, height/2 -33, width/2 +6, height/2 -19);
   fill(150, 150, 150); 
   
   
   pushStyle();
   strokeWeight(10);
   line(width/2 - 48, height/2-15, width/2 - 90, height/2 + 38);
   //line(width/2 + 14, height/2+23, width/2 + 27.5, height/2 + 38);
   drawAndMoveRightArm(x, y);
   popStyle();
   
   pushStyle();
   strokeWeight(2);
   //drawAndMoveSpear();
   //line(width/2 + 16, height/2+55, width/2 + 40, height/2 + 15);
   popStyle();
   //triangle(width/2 + 35, height/2 + 13, width/2 + 50, height/2, width/2 +
   
   
     //pushStyle();              //torso and slug tail is made here
     ////fill(0);
     //fill(13, 149, 2);
     //noStroke();
     //ellipse(x, y, 115, 148);
     //ellipse(x-43, y+72, 112, 44);
     ////ellipse(x-10, y+17, 25, 10);
     
     //ellipse(x-48, y+72, 112, 40);
     ////ellipse(width/2 - 12, height/2 + 50, 25, 7);
     //ellipse(x-45, y+72, 112, 39);
     
     
     //ellipse(x-43, y+72, 112, 39);
     //ellipse(x-45, y+72, 112, 37);
     //ellipse(x-45, y+72, 112, 37);
     //ellipse(x-47, y+72, 112, 35);
     
     //ellipse(x-46, y+72, 112, 34);
     //ellipse(x-48, y+72, 112, 30);
     
     //ellipse(x-47, y+72, 112, 30);
     //ellipse(x-48, y+72, 112, 34);
     //ellipse(x-48, y+72, 112, 33);
     //ellipse(x-47, y+72, 112, 35);
     //ellipse(x-46, y+72, 112, 35);
     //ellipse(x, y-20, 15, 25);
     //popStyle();
     
     //fill(245, 0, 20);
     //ellipse(x-4, y-23, 18, 4);
     //ellipse(x+4, y-23, 4, 4);
     //fill(0);
     //triangle(x-7, y-33, x-4, y-45, x-1 , y-33);
     //triangle(x+1, y-33, x+4, y-45, x+7 , y-33);
     
     
       
    //// fill(245, 0, 20);
     //pushStyle();                        //facial features made here
     //stroke(245, 0, 20);
     //strokeWeight(2);
     //line(x-6, y-37, x-3, y-37);
     //line(x+2, y-37, x+5, y-37);
     //popStyle();
     ////rect(width/2 - 5, height/2 - 7, 2, 2);
     //fill(0);
     //pushStyle();
     //noStroke();
     //arc(x, y-30, 13, 10 ,180, 360);
     //popStyle();
     
     //line(x-4, y-18, x+4, y-18);
     //fill(255);
     //triangle(x-4, y-18, x-2, y-14, x, y-18);
     //triangle(x, y-18, x+2, y-14, x+4, y-18);
     //fill(150, 150, 150); 
     
     
     //pushStyle();
     //strokeWeight(5);
     //stroke(0);
     //line(x-15, y-7, x-27.5, y+8);
     ////line(x+14, y-7, x-27.5, y+8);
     //popStyle();
     ////drawAndMoveRightArm(x, y);
     //drawAndMoveRightArmOtherUnit(x, y);
     
     //pushStyle();
     //strokeWeight(2);
     ////line(x+16, y+25, x+40, y-15);
     //popStyle();
     ////triangle(x+35, y-17, x+50, y-30, x+45, y-15);
   }
   
   
  void drawEnemy(int x, int y){
    
     
     pushMatrix();
     //drawUnit();
     
     //enemyInMove(x, y);
     //enemyInMoveHarder(x, y);
     enemyBossInMove(x, y);
     angleOfRotation += modifyAngle;
     angleOfRotation2 += modifyAngle2;
     
     if ((angleOfRotation > highestAngle || angleOfRotation < 0))
    {
      modifyAngle = -modifyAngle;
      angleOfRotation += modifyAngle;
    }
    if((angleOfRotation2 > highestAngle || angleOfRotation2 < 0)){
      modifyAngle2 = -modifyAngle2;
      angleOfRotation2 += modifyAngle2;
    }
    popMatrix();
  }
   

void drawAndMoveRightArm(int x, int y){
   //line(764, 323, 765, 323);
   pushMatrix();
   //pushStyle();
   
   
   //translate(764, 323);
   
   translate(x+13, y-7);
   //line(width/2 - 15, height/2+23, width/2 - 27.5, height/2 + 38);
   rotate(radians(-angleOfRotation2));
   //line(width/2 + 14, height/2+23, width/2 + 27.5, height/2 + 38);
   pushStyle();
   strokeWeight(5);
   stroke(0);
   line(0, 0, 13.5, 15);
   popStyle();
   //rect(0,0, 12, 10);
   pushStyle();
   stroke(0);
   strokeWeight(2);
   line(0 ,32, 36, -8);
   popStyle();
   pushStyle();
   //noStroke();
   //triangle(width/2 + 35, height/2 + 13, width/2 + 50, height/2, width/2 + 45, height/2 + 15);
   //triangle(785, 313, 800, 300, 795, 315);
   strokeWeight(1);
   fill(150, 150, 150); 
   triangle(28, -10, 45, -23, 40, -4);
   popStyle();
   //rect(0, 0, 25, 56);
   //popStyle();
   popMatrix();
}

void drawAndMoveRightArmOtherUnit(int x, int y){
   //line(764, 323, 765, 323);
   pushMatrix();
   //pushStyle();
   strokeWeight(5);
   
   //translate(764, 323);
   
   translate(x+13, y-7);
   //line(width/2 - 15, height/2+23, width/2 - 27.5, height/2 + 38);
   rotate(radians(-angleOfRotation));
   //line(width/2 + 14, height/2+23, width/2 + 27.5, height/2 + 38);
   stroke(0);
   line(0, 0, 13.5, 15);
   //rect(0,0, 12, 10);
   pushStyle();
   strokeWeight(2);
   line(0 ,32, 36, -8);
   popStyle();
   pushStyle();
   //noStroke();
   //triangle(width/2 + 35, height/2 + 13, width/2 + 50, height/2, width/2 + 45, height/2 + 15);
   //triangle(785, 313, 800, 300, 795, 315);
   strokeWeight(1);
   fill(150, 150, 150); 
   triangle(28, -10, 45, -23, 40, -4);
   popStyle();
   //rect(0, 0, 25, 56);
   //popStyle();
   popMatrix();
}


    
}