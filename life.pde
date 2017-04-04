class life{
  
 private int life = 100;
 
 life(int life){
    this.life = life;
 }
 
 void getDameged(int x){
     this.life = this.life -x;
 }
 
 int getLife(){
   return this.life;  
 }
 
 void recoverLife(int recover){
    life = life + recover;
 }
 
 void resetLife(int newlife){
     this.life = newlife;
 }
 
 void showLife(){
   textSize(50);
   text("Life: "+life,width/2-50,100);
   textSize(15);
 }
  
}