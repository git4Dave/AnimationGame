/*

     ***  main  *** 



*/

import processing.serial.*;
PImage pm;
String title, subTitle, welcome;
String a, b, c;   
int green;
boolean showMenu;
int choice;
boolean menuAccess;
int heights = 1000;
final int enemySize = 30;
final int DISPLAY_DURATION = 200; // 1s


///class 
life _life = new life(150);///life of the castle
Item item = new Item();
Environment en = new Environment();
EnemyTroop enemytoop[] = new EnemyTroop[enemySize];
Cannon cannon = new Cannon();
User p1 = new User();///player class

void setup(){
  size(1000, 600);
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
      enemytoop[i] = new EnemyTroop();
      enemytoop[i].init();
  }
  cursor(CROSS);
  //printArray(Serial.list());
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
    text(welcome,width/2-100,height/2-100);
    textSize(40);
    text(a,width/2 - 100,height/2);
    text(b,width/2 - 100,height/2 + 100);
    text(c,width/2 - 100,height/2 + 200);
    textSize(15);
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
          Castle cas = new Castle();
          Cannon can = new Cannon();

          smooth();
          
          can.moveCannonAngle();
          p1.display();
          can.display();
          cas.display();
          get_items();
          use_item();
          en.display();
          checkAttacksForEnemy();
          
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

void insruction(){
  background(0);
  
  String howToPlay ="instruction goes here...";
  String quit = "Hit 'q' to quit ";
  text(howToPlay,width/2,height/2);
  text(quit,width/2,height/2 + 250);
  
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


void mousePressed(){
 p1.fire(); 
}



void checkAttacksForEnemy(){
  

  println(p1.getSizeOfCannonBallArrayList());
  for(int j = 0;j<p1.getSizeOfCannonBallArrayList();j++){
      float ax = p1.getXCoordOfCannonBallInArrayListAtIndex(j);
      float ay = p1.getYCoordOfCannonBallInArrayListAtIndex(j);
      println(ax+" "+ay);
    for(int i = 0;i<enemySize;i++){
          enemytoop[i].checkAttackers((int)ax,(int)ay);
     }
  } 
  
  for(int i = 0;i<enemySize;i++){
     if(enemytoop[i].getIsAlive()){
        enemytoop[i].showEnery();
        //  println(i+" is alive");
       }
       
     enemytoop[i].enemyMoveUP();
   }
  

  
}
