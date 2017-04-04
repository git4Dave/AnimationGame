class Menu{
    private String title = "Defend The Castle";
    private String subTitle = "Press Enter to Start";
    private String welcome = "Welcome";
    private String a = "p. Play Game";
    private String b = "b. Scores";
    private String c = "c. How to play game";   
    private int green = 120;
    
  void showTitle(){
    PFont m;
   // m = loadFont("Symbola-48.vlw");
    pushMatrix();
    strokeWeight(15);
    fill(0,green+50,0);
    //textFont(m); 
    textSize(70);
    text(title,width/2-300,height/2-400);
    textSize(25);
    text(subTitle,height/2-80,height/2-300);
    textSize(15);
    strokeWeight(8);
    popMatrix();
  }//end of showtitle
  
  void mainMenu(){
    background(0);
    fill(0,green+50,0);
    strokeWeight(15);
    textSize(70);
    text(welcome,height/2-300,height/2-400);
    textSize(40);
    text(a,height/2-300,height/2-350);
    text(b,height/2-300,height/2-300);
    text(c,height/2-300,height/2-250);
    textSize(15);
  }
  
}
void setup(){
   size(1500,1500);
}

Menu menu = new Menu();
Castle castle = new Castle();

boolean showMenu = true;
int choice = 0;
void draw(){
   

  if(key == ENTER)
    showMenu = false;
  
   if(showMenu){
     background(0);
     menu.showTitle();

   }
   else{
     menu.mainMenu();
     
     checkKey();
     
     
     
     switch(choice){
      
       //methods to do games 
       case 1 :{
         castle.display();
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
  text(howToPlay,height/2-300,height/2-250);
  text(quit,height/2-300,height/2-450);
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
  if(key == 'q'){
    choice = 0;
  }
  
}
