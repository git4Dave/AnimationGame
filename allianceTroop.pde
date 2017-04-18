class allianceTroop extends enemy_design{
  
  int angleOfRotationLeft = 0;
  int modifyAngle3 = 3;
  int angleOfRotationRight = 0;
  int modifyAngle4 = 3;
  private int life = 4;
  private int x = 1200;
  private int y = 450;
  private int targetValue;//target value. this is the array number of target enemy
  
  void init(int target){
    this.targetValue = target;
    println("target value = "+target);
  }
  
  void startInMiddle(){
     this.x = 650; 
  }
  
  void showAllianceTroop(){
    
    //allianceInMove(x,y);
    drawAllies();
    
    ///if the target enemy is dead then, re-assigned to new target
    if(!enemytroop[targetValue].getIsAlive()){
      println(targetValue+" is dead");
      targetValue = getNewTrget();
      println("new value "+targetValue+" is assigned");
    }
    
    allianceTroopAttacksEnemy();
    giveDamageToenemy();
  }
  
  void allianceTroopAttacksEnemy(){
    
    if(enemytroop[targetValue].getX() - this.x >0)
       this.x = this.x+2;
     else
       this.x = this.x - 2;
       
    if(enemytroop[targetValue].getY() - this.y >0)
       this.y = this.y+2;
     else
       this.y = this.y-2;
    
  }//allianceTroopAttacksEnemy
  
  void giveDamageToenemy(){
    
    if(abs(enemytroop[targetValue].getX() - this.x) <5 && abs(enemytroop[targetValue].getY() - this.y) <7){
        enemytroop[targetValue].enemyGetDamaged();
        enemytroop[targetValue].IsEnemyDead();
        allianceTroopGetDamaged();
    }
  }//giveDamageToenemy
  
  void allianceTroopGetDamaged(){
      life--;
  }
  
  int getNewTrget(){
    
      int newvalue;
      if(firstGame){
          newvalue =getTargetForAllianceTroop(true);
      }
      else{
          float rand = random(0,2);
          boolean right= true;
          if(rand > 1)
            right = false;
          newvalue = getTargetForAllianceTroop(right);
      }
     return newvalue;
  }
  
  
  int getLife(){
     return life; 
  }
  
  void drawAllies(){
    pushMatrix();
     allianceInMove(x, y);
    
     angleOfRotationLeft += modifyAngle3;
     angleOfRotationRight += modifyAngle4;
     
    if ((angleOfRotationRight > highestAngle || angleOfRotationRight < 0)){
      modifyAngle4 = -modifyAngle4;
      angleOfRotationRight += modifyAngle4;
    }
    if ((angleOfRotationLeft > highestAngle || angleOfRotationLeft < 0)){
      modifyAngle3 = -modifyAngle3;
      angleOfRotationLeft += modifyAngle3;
    }
    popMatrix();
  }
  
  
  void drawAndMoveLeftArm(int x, int y){
  //line(764, 323, 765, 323);
   pushMatrix();
   translate(x-13, y-7);
   //line(width/2 - 15, height/2+23, width/2 - 27.5, height/2 + 38);
   rotate(radians(angleOfRotationLeft));
   //line(width/2 + 14, height/2+23, width/2 + 27.5, height/2 + 38);
   pushStyle();
   strokeWeight(5);
   stroke(0);
   line(0, 0, -13.5, 15);
   popStyle();
   //rect(0,0, 12, 10);
   pushStyle();
   stroke(0);
   strokeWeight(2);
   //line(0 ,32, 36, -8);
   line(0 ,32, -36, -8);
   popStyle();
   pushStyle();
   //noStroke();
   //triangle(width/2 + 35, height/2 + 13, width/2 + 50, height/2, width/2 + 45, height/2 + 15);
   //triangle(785, 313, 800, 300, 795, 315);
   stroke(0);
   strokeWeight(1);
   fill(150, 150, 150); 
   triangle(-28, -12, -45, -23, -40, -4);
   popStyle();
   //rect(0, 0, 25, 56);
   //popStyle();
   popMatrix();
   
}

void drawAndMoveRightArmAllied(int x, int y){
   //line(764, 323, 765, 323);
   pushMatrix();
   
   translate(x+13, y-7);
   //line(width/2 - 15, height/2+23, width/2 - 27.5, height/2 + 38);
   rotate(radians(-angleOfRotationRight));
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
   stroke(0);
   strokeWeight(1);
   fill(150, 150, 150); 
   triangle(28, -10, 45, -23, 40, -4);
   popStyle();
   //rect(0, 0, 25, 56);
   //popStyle();
   popMatrix();
}

   
   void allianceInMove(int x,int y){
     pushStyle();              //torso and slug tail is made here
    fill(255);
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
     
     pushStyle();
     stroke(3, 219, 255);
     ellipse(x-4, y-23, 4, 4);
     ellipse(x+4, y-23, 4, 4);
     fill(255);
     triangle(x-7, y-33, x-4, y-45, x-1 , y-33);
     triangle(x+1, y-33, x+4, y-45, x+7 , y-33);
     popStyle();
     
     
       
    // fill(245, 0, 20);
     pushStyle();                        //facial features made here
     stroke(3, 219, 255);
     strokeWeight(2);
     line(x-6, y-37, x-3, y-37);
     line(x+2, y-37, x+5, y-37);
     popStyle();
     //rect(width/2 - 5, height/2 - 7, 2, 2);
     fill(255);
     pushStyle();
     noStroke();
     arc(x, y-30, 13, 10 ,180, 360);
     popStyle();
     
     pushStyle();
     line(x-4, y-18, x+4, y-18);
     stroke(0);
     fill(255);
     triangle(x-4, y-18, x-2, y-14, x, y-18);
     triangle(x, y-18, x+2, y-14, x+4, y-18);
     fill(150, 150, 150); 
     popStyle();
     
     
     pushStyle();
     strokeWeight(5);
     stroke(0);
     //line(x-15, y-7, x-27.5, y+8);
     //line(x+14, y-7, x+27.5, y+8);
     popStyle();
     drawAndMoveRightArmAllied(x, y);
     drawAndMoveLeftArm(x, y);
     //drawAndMoveRightArmOtherUnit(x, y);
   }
  
  
}//end of allianceTroop
