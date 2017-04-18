class life{
  
 private int life;
 
 //initializes the life of the castle
 life(int life){
    this.life = life;
 }
 
 //Updates the damage inflicted on castle
 void getDameged(int x){
     this.life = this.life - x;
 }
 
 //returns the life of the castle
 int getLife(){
   return this.life;  
 }
 
 //restores the life of the castle based on value passed in
 void recoverLife(int recover){
    life = life + recover;
 }
 
 //Resets castle health
 void resetLife(int newlife){
     this.life = newlife;
 }
 
 //Displays the amount of life left in the castle
 void showLife(){
   textSize(50);
   fill(250, 250, 0);
   text("Life: "+life,width/2-50,100);
   textSize(15);
 }
  
}