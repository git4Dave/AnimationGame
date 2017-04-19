import processing.sound.*;
SoundFile warDrumsSound, cannonShotSound, swordsClashingSound, lightningSound;

PImage pm, pm2;
private String title, subTitle, welcome;
private String a, b, c, m;   
private int green;
private boolean showMenu;
private int choice;
private boolean menuAccess;
private int heights = 1000;
final int enemySize = 10;
final int DISPLAY_DURATION = 200;
private boolean[] isEnemyTakenByAllanceTroopAsTarget = new boolean[enemySize];
private boolean[] isEnemyTakenByAllanceTroopAsTargetRight = new boolean[enemySize];
private int allianceCount = 0;
private int countToWaitForMenu;
private int lifeCount = 60000;


life _life = new life(lifeCount);///life of the castle
Item item = new Item();
User p1 = new User();
EnemyTroop enemytroop[] = new EnemyTroop[enemySize];
EnemyTroop enemytroopRightSide[] = new EnemyTroop[enemySize];


Cannon can;
Castle cas;
Environment en;
ArrayList <Detonation> explosions;
ArrayList <allianceTroop> alliTroop = new ArrayList<allianceTroop>();
boolean firstGame;
boolean secondGame;
boolean gameOver;
boolean showMenuAgain, secondGameEnded;


void setup(){
  size(1500, 600);
  pm = loadImage("sky.jpg");
  pm2 = loadImage("NightSky.jpg");
  /*
  warDrumsSound = new SoundFile(this, "WarDrums.wav");
  cannonShotSound = new SoundFile(this, "CannonShot.wav");
  swordsClashingSound = new SoundFile(this, "SwordsClashing.wav");
  lightningSound = new SoundFile(this, "Lightning.wav");
  warDrumsSound.loop();
  */
  title = "Defend The Castle";
  subTitle = "Press Enter to Start";
  welcome = "Welcome";
  a = "p. Easy";
  m = "i. Intermediate";
  b = "b. Scores";
  c = "c. How to play game";  
  green = 120;
  countToWaitForMenu = 0;
  showMenu = true;
  firstGame = false;
  secondGame = false;
  showMenuAgain = false;
  secondGameEnded = false;
  Arrays.fill(isEnemyTakenByAllanceTroopAsTarget,true);
  Arrays.fill(isEnemyTakenByAllanceTroopAsTargetRight,true);
  choice = 0;
  smooth();
  gameOver = false;
  menuAccess = true;
   for(int i = 0;i<enemySize;i++){
      enemytroop[i] = new EnemyTroop();
      enemytroop[i].setUpInitialPositionForEnemy(true);
      enemytroop[i].setJumpValueForEnemy();
  }
  for(int i = 0;i<enemySize;i++){
      enemytroopRightSide[i] = new EnemyTroop();
      enemytroopRightSide[i].setUpInitialPositionForEnemy(false);
      enemytroopRightSide[i].setJumpValueForEnemy();
  }
  cursor(CROSS);
  explosions = new ArrayList<Detonation>();
}



void initiateDetonation() {
  boolean detonationOccurred = false;
  for (Detonation d: explosions) {
    d.removeExplosionIfBallLeavesMap(); 
    d.explosionMaterialMovement();      
    d.display(); 
    detonationOccurred = true;
  }
  //if(detonationOccurred == true){
  //  explosionSound.play();
  //}
  
  for (int i = explosions.size()-1; i>=0; i--){
    Detonation d = (Detonation) explosions.get(i);
    if (d.removeExplosion) {
      explosions.remove(i);
    }
  }
} 


void draw(){
    displayMenu();
    menuAccess = false;
}

 void showTitle(){
    //PFont m;
   // m = loadFont("Symbola-48.vlw");
    pushMatrix();
    strokeWeight(15);
    fill(0,green+50,0);
    //textFont(m); 
    textSize(70);
    translate(-100, 0);
    text(title,width/2 - 300,height/2);
    textSize(25);
    text(subTitle,width/2 - 100,height/2 + 100);
    textSize(15);
    strokeWeight(8);
    popMatrix();
  }//end of showtitle
  
  
 void showTitle2(){
    //PFont m;
   // m = loadFont("Symbola-48.vlw");
    pushMatrix();
    strokeWeight(15);
    fill(0,green+50,0);
    //textFont(m); 
    textSize(70);
    translate(-100, 0);
    text(title,width/2,height/2);
    textSize(25);
    text(subTitle,width/2,height/2 + 100);
    textSize(15);
    strokeWeight(8);
    popMatrix();
  }//end of showtitle
  
   void mainMenu(){
    background(0);
    fill(0,green+50,0);
    strokeWeight(15);
    textSize(70);
    pushMatrix();
    translate(-150, 0);
    text(welcome,width/2,height/2-200);
    textSize(40);
    text(a,width/2,height/2 - 100);
    text(m,width/2,height/2);
    text(c,width/2,height/2 + 100);
    textSize(15);
    popMatrix();
  }
  
  public void displayMenu(){
     
//     if(choice == 0) //only run at the welcome screen

     
     switch(choice){
       
        case 0:{   
       if(key == ENTER)
         showMenu = false;
      
       if(showMenu && showMenuAgain == true){
         background(0);
         showTitle2();
       }
       else if(showMenu){
         background(0);
         showTitle();
       }
       else{
         choice = 7;
       }
       break;
        }
       //methods to do games 
       case 1 :{
         
         if(isAllEnemyDead()){
           secondGameEnded = false; 
            image(pm, 0, 0, width, height);
            cas = new Castle();
            can = new Cannon();
            en = new Environment();           
            smooth();
            can.moveCannonAngle();
            p1.display();
            can.display();
            cas.display();
            initiateDetonation();
            get_items();
            use_item();
            en.display();
            displayAllianceTroop();
            checkAttacks();
         
       }else{
            image(pm, 0, 0, width, height);
            cas = new Castle();
            can = new Cannon();
            en = new Environment(); 
            smooth();
            can.moveCannonAngle();
            p1.display();
            can.display();
            cas.display();
            en.display(); 
            displayYouWin();
       }
       break;
     }
       case 2:{
         if(isAllEnemyDead()){
            secondGameEnded = false; 
            image(pm2, 0, 0, width, height);
            cas = new Castle();
            can = new Cannon();
            en = new Environment();           
            smooth();
            can.moveCannonAngle2();
            p1.displaySecond();
            can.displaySecondCannon();
            cas.displaySecondCastle();
            initiateDetonation();
            get_items();
            use_item();
            en.displaySecondEnvironment();
            displayAllianceTroop();
            checkAttacks();
            checkAttacksForRightEnemy();
            if(choice == 5){
              secondGameEnded = true;
            }
         
       }else{
            image(pm2, 0, 0, width, height);
            cas = new Castle();
            can = new Cannon();
            en = new Environment(); 
            smooth();
            can.moveCannonAngle2();
            p1.displaySecond();
            can.displaySecondCannon();
            cas.displaySecondCastle();
            en.displaySecondEnvironment(); 
            displayYouWin();
       }
       break;
       }
       case 3:{
         //score();
         choice = 0;
         break;
       }
       case 4:{
         insruction();
        break; 
       }
       case 5:{
         if(secondGameEnded == true){
            image(pm2, 0, 0, width, height);
            can.displaySecondCannon();
            cas.displaySecondCastle();  
            en.displaySecondEnvironment(); 
         }
         else{
          image(pm, 0, 0, width, height);
            can.display();
            cas.display();  
            en.display();
         }
         _life.resetLife(0);
           _life.showLife();
               gameOver = true;
               textSize(100);
                textAlign(CENTER,CENTER);
                fill(255,0,0);
                
                text("GAME OVER", width/2, height/2);
          
          countToWaitForMenu++;
          
          if(countToWaitForMenu % 100 == 0)
          { 
            choice = 6;
            // goBackToMenu = true;
          }
         
         break;
         
       }
       case 6:{
          textAlign(CENTER,CENTER);
         _life.resetLife(lifeCount);
      countToWaitForMenu = 0;
      showMenu = true;
      firstGame = false;
      secondGame = false;
      Arrays.fill(isEnemyTakenByAllanceTroopAsTarget,true);
      smooth();
      gameOver = false;
      menuAccess = true;
       for(int i = 0;i<enemySize;i++){
          choice = 0;
          enemytroop[i] = new EnemyTroop();
          enemytroop[i].setUpInitialPositionForEnemy(true);
          enemytroop[i].setJumpValueForEnemy();
      }
      for(int i = 0;i<enemySize;i++){
          enemytroopRightSide[i] = new EnemyTroop();
          enemytroopRightSide[i].setUpInitialPositionForEnemy(false);
          enemytroopRightSide[i].setJumpValueForEnemy();
      }
         showMenuAgain = true;
         break;
       }
       case 7:{
          textAlign(CENTER,CENTER);
        mainMenu();
         
         checkKey(); 
         break;
       }
     }//end of switch

  
}//end of draw


public void checkAttacks(){
  
//  println("number of ball on screen "+(p1.getSizeOfCannonBallArrayList()+1));
  boolean wasEnemyHit;
  //for(int j = 0;j<p1.getSizeOfCannonBallArrayList()+1;j++){
  //    float ax = p1.getXCoordOfCannonBallInArrayListAtIndex(j);
  //    float ay = p1.getYCoordOfCannonBallInArrayListAtIndex(j);
  //    CannonBall can2 = p1.getCannonBallInArrayListAtIndex(j);
  //    println(ax+" "+ay);
      int NumberOfCannonBallOnScreen = p1.getSizeOfCannonBallArrayList()+1;

   boolean reachedCastle;
   if(NumberOfCannonBallOnScreen == 0){
    for(int i = 0;i<enemySize;i++){
         enemytroop[i].setMoveForward();  
   }
  } 
   else{
       for(int k = 0;k<NumberOfCannonBallOnScreen;k++){
           float ax2 = p1.getXCoordOfCannonBallInArrayListAtIndex(k);
           float ay2 = p1.getYCoordOfCannonBallInArrayListAtIndex(k);
           CannonBall can3 = p1.getCannonBallInArrayListAtIndex(k);
         for(int i = 0;i<enemySize;i++){
               enemytroop[i].checkAttackers((int)ax2,(int)ay2);
               //enemytroop[i].checkEnemyHitByCannon((int)ax,(int)ay);
               wasEnemyHit = enemytroop[i].checkEnemyHitByCannon((int)ax2,(int)ay2);
               enemytroop[i].ExecuteCannonBlast(wasEnemyHit, can3);
         }
      }
  }
  for(int i = 0;i<enemySize;i++){
     if(enemytroop[i].getIsAlive()){
        reachedCastle = enemytroop[i].showEnery();
        if(reachedCastle == true){
          if(frameCount % 20 == 0){

             _life.getDameged(2);
       //      swordsClashingSound.play();
             if(_life.getLife() <= 0){
              choice = 5;
              countToWaitForMenu = 0;
                break;
           }
     }
  }
     }
     enemytroop[i].enemyMoveUP();
  
}
}


             
void displayAllianceTroop(){
  
  for(int i = 0;i<alliTroop.size();i++){
      alliTroop.get(i).showAllianceTroop();
      if(alliTroop.get(i).getLife() == 0){
         alliTroop.remove(i);
       }
  }
  
}//displayAllianceTroop

void insruction(){
  background(0);
  
   String howToPlayTitle = "---How To Play---";
  String howToPlay ="Hover your mouse over the enemies that you want to eliminate and";
  String howToPlayCont = "press the left mouse button to shoot from the cannon";
  String objective = "The objective is to keep enemies from destroying your castle";
  String abilities = "----Abilities----";
  String powers = "**There are three abilities that can each be obtained by";
  String powersCont1 = " hovering your mouse and clicking over their";
  String powersCont2 = "respective icons as they are falling down the screen";
  String lightning = "***A yellow circular object in the screen represents the";
  String lightningCont1 = "lightning power. Once you obtain it, press the 'L' key in your keyboard to use it.";
  String lightningCont2 = "Obtain it in order to unleash a devastating attack upon your enemies";
  String allies = "***A purple circular object in the screen represents an allied troop ability.";
  String alliesCont1 = "Once obtained, use it by pressing the 'H' key in your keyboard and an ally";
  String alliesCont2 = " will come to your aid.";
  String life = "***A green circular object in the screen represents the life ability. Once";
  String lifeCont1 = "obtained, it will instantly regenerate life for your castle without";
  String lifeCont2 = "needing to press any keys";
  String quit = "Hit 'q' to quit ";
  pushMatrix();
  translate(-150, 0);
  textSize(40);
  text(howToPlayTitle,width/2,height/4 - 110);
  textSize(33);
  text(abilities, width/2, height/2 - 135);
  textSize(27);
  text(howToPlay,width/2,height/4 - 75);
  text(howToPlayCont,width/2,height/4 - 50);
  text(objective,width/2,height/4 + 50 - 75);
  text(powers, width/2, height/2 - 100);
  text(powersCont1, width/2, height/2+ 25 - 100);
  text(powersCont2, width/2, height/2+ 50 - 100);
  text(lightning, width/2, height/2 + 75 - 80);
  text(lightningCont1, width/2 + 100, height/2 + 100 - 80);
  text(lightningCont2, width/2 + 75, height/2 + 125-80);
  text(allies, width/2  + 75, height/2 + 150 - 75);
  text(alliesCont1, width/2 + 75, height/2 + 175 - 75);
  text(alliesCont2, width/2, height/2 + 200 - 75);
  text(life, width/2, height/2 + 225 - 70);
  text(lifeCont1, width/2, height/2 + 250 - 70);
  text(lifeCont2, width/2, height/2 + 275 - 70);
  
  
  text(quit,width/2,height/2 + 250);
  popMatrix();
  
  if(key == 'q'){
    choice = 0;
  }
  
}

public void checkAttacksForRightEnemy(){
  
       boolean wasEnemyHit;

       int NumberOfCannonBallOnScreen = p1.getSizeOfCannonBallArrayList()+1;
      // println(NumberOfCannonBallOnScreen);
       boolean reachedCastle;
  /*     
       for(int i =0;i<NumberOfCannonBallOnScreen;i++){
         if()
       }
  */  
  
       if(NumberOfCannonBallOnScreen == 0 ){
        for(int i = 0;i<enemySize;i++){
            enemytroopRightSide[i].setMoveForward();  
       }
      } 
       else{
           for(int k = 0;k<NumberOfCannonBallOnScreen;k++){
               float ax2 = p1.getXCoordOfCannonBallInArrayListAtIndex(k);
               float ay2 = p1.getYCoordOfCannonBallInArrayListAtIndex(k);
               CannonBall can3 = p1.getCannonBallInArrayListAtIndex(k);
             for(int i = 0;i<enemySize;i++){
                   enemytroopRightSide[i].checkAttackersForRightEnemy((int)ax2,(int)ay2);
                   //enemytroop[i].checkEnemyHitByCannon((int)ax,(int)ay);
                   wasEnemyHit = enemytroopRightSide[i].checkEnemyHitByCannon((int)ax2,(int)ay2);
                   enemytroopRightSide[i].ExecuteCannonBlast(wasEnemyHit, can3);
             }
          }
      }
      for(int i = 0;i<enemySize;i++){
         if(enemytroopRightSide[i].getIsAlive()){
            reachedCastle = enemytroopRightSide[i].showEnemyRightSide();
            if(reachedCastle == true){
              if(frameCount % 20 == 0){
                 _life.getDameged(2);
              //   swordsClashingSound.play();
                 if(_life.getLife() <= 0){
                   countToWaitForMenu = 0;
                    choice = 5;
                    break;
               }
         }
      }
         }
         enemytroopRightSide[i].enemyMoveUP();
    }  
  
}

void checkKey(){
  
  if(key == 'p'){
    secondGame = false;
    firstGame = true;
    choice = 1;
  }
  if(key == 'i'){
      firstGame = false;
      secondGame = true;
     choice = 2; 
  }
  if(key == 'c'){
    choice = 4;
  }
 
}

void get_items(){
    item.get_Lightning();
    item.get_Life();
    item.get_Troop();
    item.showLighningCount();
    item.showTroopCount();
    _life.showLife(); 
}

boolean isAllEnemyDead(){
  
  for(int i = 0;i<enemySize;i++)
    if(enemytroop[i].getIsAlive())
        return true;
  
    return false;
}//end of isAllEnemyDead

void getAllianceTroop(){
  while(item.getTroopCount()>0){
     
      alliTroop.add(new allianceTroop());
      ///for stage 1 
      if(firstGame){
           int a = getTargetForAllianceTroop();
           alliTroop.get(alliTroop.size()-1).init(a);
           alliTroop.get(alliTroop.size()-1).setIsTrackingRightEnemyTrue();
      }
      else{
      //for stage 2
           
           boolean isRight = true;
           float rand = random(0,2);
           if(rand>1)
             isRight = false;
           int a = getTargetForAllianceTroopForRightEnemy(isRight);
           alliTroop.get(alliTroop.size()-1).init(a);
           
           if(isRight)
             alliTroop.get(alliTroop.size()-1).setIsTrackingRightEnemyTrue();
           alliTroop.get(alliTroop.size()-1).EnemyStartingXValueForStage2();
      }
      
    
      item.decrementTroopCount();
      
  }
}
int getTargetForAllianceTroopForRightEnemy(boolean isRight){
 
  
  if(isRight){
      for(int i = 0;i<enemySize;i++){
        if(enemytroopRightSide[i].getIsAlive() && isEnemyTakenByAllanceTroopAsTargetRight[i]){
          isEnemyTakenByAllanceTroopAsTarget[i] = false;
          return i;
        }
      }
  }
  else{
      for(int i = 0;i<enemySize;i++){
        if(enemytroop[i].getIsAlive() && isEnemyTakenByAllanceTroopAsTarget[i]){
          isEnemyTakenByAllanceTroopAsTarget[i] = false;
          return i;
        }
      }
  }
  ///you get there if all the enemyTroop are currently taken targeted by alliance troop
  for(int i = 0;i<enemySize;i++){
    if(enemytroop[i].getIsAlive()){
      return i;
    }
  }

  ///it will never get here
  return 0;
}

int getTargetForAllianceTroop(){
 println("asfasdf found ");
 for(int i = 0;i<enemySize;i++){
   if(enemytroop[i].getIsAlive())
     println(i+" ALive");
    else
    println(i+" dead");
 }
 println(" ");
  for(int i = 0;i<enemySize;i++){
   if(isEnemyTakenByAllanceTroopAsTarget[i])
     println(i+" ALive");
    else
    println(i+" dead");
 }
 
  for(int i = 0;i<enemySize;i++){
    if(enemytroop[i].getIsAlive() && isEnemyTakenByAllanceTroopAsTarget[i]){
      isEnemyTakenByAllanceTroopAsTarget[i] = false;
      return i;
    }
  }
  
  ///you get there if all the enemyTroop are currently taken targeted by alliance troop
  for(int i = 0;i<enemySize;i++){
    if(enemytroop[i].getIsAlive()){
      return i;
    }
  }

  ///it will never get here
  return 0;
}

void use_item(){
  
  if(key == 'l' && item.getLightningCount() > 0){
    
       int startTime = millis();
    //   while (millis() - startTime < DISPLAY_DURATION){
         key = ';';///set the key to diffrent key
         en.Lightning(0,1000,100,0,1000,100,0,1000,100);
         en.Lightning(0,1000,400,0,1000,400,0,1000,400);
         en.Lightning(0,1000,700,0,1000,700,0,1000,700);
         en.Lightning(0,1000,1000,0,1000,1000,0,1000,1000);
   //       lightningSound.play(); 
    //   }
        item.decrementLightningCount();
        
  }
  else if (key == 'h'){
     getAllianceTroop();
     key = ';';
  }
  else if(key == 'q'){
     resetEnemyPosition();
    choice = 0;
  }
  else{
    key = ';';///set the key to diffrent key
  }
}

void resetEnemyPosition(){
 for(int i = 0; i < enemySize; i++){
    enemytroop[i].setToAlive();
    enemytroop[i].setUpInitialPositionForEnemy(true);
    enemytroopRightSide[i].setToAlive();
    enemytroopRightSide[i].setUpInitialPositionForEnemy(false);
   
 }
 
 int i = 0;
 for(; i<alliTroop.size(); i++){
   alliTroop.remove(i);
}
}

void displayYouWin(){
  textSize(100);
  textAlign(CENTER,CENTER);
  fill(0,0,255);
  String youWin = "You Win!";
  text(youWin,width/2,height/2);
}

void mousePressed(){
  if(secondGame == false && firstGame == true){
    p1.shootCannon();
//    cannonShotSound.play();
  }
  else{
    p1.shootCannon2();
 //   cannonShotSound.play();
  }
}
