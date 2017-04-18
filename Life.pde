class life{
  
 private int life;
 
 life(int life){
    this.life = life;
 }
 
 void getDameged(int x){
     this.life = this.life - x;
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
   fill(250, 250, 0);
   if(life>0)
     text("Life: "+life,width/2-50,100);
   if(life == 0 && life<0)
     text("Life: 0",width/2-50,100);
   textSize(15);
 }
 
 void resetLife(){
    this.life = 150; 
 }
  
}
