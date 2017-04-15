PImage pm;
String title, subTitle, welcome;
String a, b, c;   
int green;
boolean showMenu;
int choice;
boolean menuAccess;
int heights = 1000;
final int enemySize = 30;
final int DISPLAY_DURATION = 200;


life _life = new life(150);///life of the castle
Item item = new Item();
User p1 = new User();
EnemyTroop enemytroop[] = new EnemyTroop[enemySize];
Cannon can;
Castle cas;
Environment en;
ArrayList <Detonation> explosions; 


void setup(){
  size(1500, 600);
  pm = loadImage("sky.jpg");
  title = "Defend The Castle";
  subTitle = "Press Enter to Start";
  welcome = "Welcome";
  a = "p. Play Game";
  b = "b. Scores";
  c = "c. How to play game";  
  green = 120;
  showMenu = true;
  choice = 0;
  smooth();
  menuAccess = true;
   for(int i = 0;i<enemySize;i++){
      enemytroop[i] = new EnemyTroop();
      enemytroop[i].setUpInitialPositionForEnemy();
      enemytroop[i].setJumpValueForEnemy();
  }
  cursor(CROSS);
  explosions = new ArrayList<Detonation>();
}


public void checkAttacks(){
  boolean wasEnemyHit;
  println("number of ball on screen "+(p1.getSizeOfCannonBallArrayList()+1));
  for(int j = 0;j<p1.getSizeOfCannonBallArrayList()+1;j++){
      float ax = p1.getXCoordOfCannonBallInArrayListAtIndex(j);
      float ay = p1.getYCoordOfCannonBallInArrayListAtIndex(j);
      CannonBall can2 = p1.getCannonBallInArrayListAtIndex(j);
      println(ax+" "+ay);
    for(int i = 0;i<enemySize;i++){
          enemytroop[i].checkAttackers((int)ax,(int)ay);
          wasEnemyHit = enemytroop[i].checkEnemyHitByCannon((int)ax,(int)ay);
          enemytroop[i].ExecuteCannonBlast(wasEnemyHit, can2);
     }
  } 
  
  for(int i = 0;i<enemySize;i++){
     if(enemytroop[i].getIsAlive()){
        enemytroop[i].showEnery();
     }
       enemytroop[i].enemyMoveUP();
  }
  
}

void initiateDetonation() {
  for (Detonation d: explosions) {
    d.removeExplosionIfBallLeavesMap(); 
    d.explosionMaterialMovement();      
    d.display();     
  }
  
  for (int i = explosions.size()-1; i>=0; i--) {
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
  
   void mainMenu(){
    background(0);
    fill(0,green+50,0);
    strokeWeight(15);
    textSize(70);
    pushMatrix();
    translate(-150, 0);
    text(welcome,width/2-100,height/2-100);
    textSize(40);
    text(a,width/2 - 100,height/2);
    text(b,width/2 - 100,height/2 + 100);
    text(c,width/2 - 100,height/2 + 200);
    textSize(15);
    popMatrix();
  }
  
  public void displayMenu(){
   if(key == ENTER)
    showMenu = false;
  
   if(showMenu){
     background(0);
     showTitle();

   }
   else{
     mainMenu();
     
     checkKey();
     
//     if(choice == 0) //only run at the welcome screen

     
     switch(choice){
      
       //methods to do games 
       case 1 :{
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
          
          checkAttacks();
         break;
       }
       case 2:{
         //score();
         choice = 0;
         break;
       }
       case 3:{
         insruction();
         
        break; 
       }
     }//end of switch
   }//end of else

  
}//end of draw

void insruction(){
  background(0);
  
  String howToPlay ="instruction goes here...";
  String quit = "Hit 'q' to quit ";
  pushMatrix();
  translate(-150, 0);
  text(howToPlay,width/2,height/2);
  text(quit,width/2,height/2 + 250);
  popMatrix();
  
  if(key == 'q'){
    choice = 0;
  }
  
}
void checkKey(){
  
  if(key == 'p'){
    choice = 1;
  }
  if(key == 'b'){
     choice = 2; 
  }
  if(key == 'c'){
    choice = 3;
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

void use_item(){
  
  if(key == 'l' && item.getLightningCount() > 0){
    
       int startTime = millis();
    //   while (millis() - startTime < DISPLAY_DURATION){
         key = ';';///set the key to diffrent key
         en.Lightning(0,1000,100,0,1000,100,0,1000,100);
         en.Lightning(0,1000,400,0,1000,400,0,1000,400);
         en.Lightning(0,1000,700,0,1000,700,0,1000,700);
         en.Lightning(0,1000,1000,0,1000,1000,0,1000,1000);
         
    //   }
        item.decrementLightningCount();
  }
  else if(key == 'q'){
    
    choice = 0;
  }
  else{
    key = ';';///set the key to diffrent key
  }
}

void mousePressed(){
  p1.shootCannon();
}