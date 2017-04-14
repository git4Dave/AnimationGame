class Environment{
  
 public Environment(){

 }
 
 public void display(){
    fill(#0C5F07);
    rect(200, height - 50, 400, 100);
    
    fill(100);
    triangle(600, height - 45, 615, height - 57, 615, height - 45);
    fill(100);
    triangle(500, height - 45, 485, height - 57, 485, height - 45);
    fill(0, 0, 255);
    rect(550, height - 25, 300, 50);
    
    fill(#62450C);
    rect(550, height - 92, 300, 15);
    
    fill(#0C5F07);
    rect(850, height - 50, 400, 100); 
   
 }
 
   void Lightning(int start, int end, int x, int start2, int end2, int x2, int start3, int end3, int x3) {

    ///x range 
    float dx = random(-15, 15);
    float dx2 = random(-25, 25);
    float dx3 = random(-10, 10);

    ///when the lightning reached the buttom, then return
    if (start >= end){
      killEnemyLightning(x,x2,x3);
      return;
    }
    
    ///big lightning
    strokeWeight(7);
    stroke(135, 206, 250);
    line(x, start, x+dx, start+5);

    ///mid lightning
    strokeWeight(3);
    stroke(0, 0, 128);
    line(x2, start2, x2+dx2, start2+5);

    ///small lightning
    strokeWeight(2);
    stroke(240, 248, 255);
    line(x3, start3, x3+dx3, start3+5);

    ///recursively call the drawLightning()
    Lightning(start+5, end, x+(int)dx, start2+5, end2, x2+(int)dx2, start3+5, end3, x3+(int)dx3);
  }
  
  
   void killEnemyLightning(int x,int x2,int x3){
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytoop[i].getX()-x)<10)
           enemytoop[i].setToDead();
     }
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytoop[i].getX()-x2)<10)
           enemytoop[i].setToDead();
     }
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytoop[i].getX()-x3)<10)
           enemytoop[i].setToDead();
     }
     
   }
  
}
