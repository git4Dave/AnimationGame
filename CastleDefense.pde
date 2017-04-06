PImage pm;
String title, subTitle, welcome;
String a, b, c;   
int green;
boolean showMenu;
int choice;
boolean menuAccess;

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
          Environment en = new Environment();
          
          smooth();
          
          can.moveCannonAngle();
          can.display();
          cas.display();
          en.display();
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