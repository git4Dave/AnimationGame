class Environment{
  
 public Environment(){

 }
 //displays environment for first game
 public void display(){
    fill(#0C5F07);
    rect(265, height - 50, 630, 100);
    
    pushMatrix();
    
    translate(330, 0);
    
     fill(100);
    triangle(600, height - 45, 615, height - 57, 615, height - 45);
    fill(100);
    triangle(400, height - 45, 385, height - 57, 385, height - 45);
    fill(0, 0, 255);
    rect(500, height - 25, 500, 50);
    
    fill(#62450C);
    rect(500, height - 92, 500, 15);
    
    fill(#0C5F07);
    rect(850, height - 50, 650, 100); 
    popMatrix();
   
 }
 
  //displays environment for second game
 public void displaySecondEnvironment(){
    fill(#362304);
    rect(width/2, height - 50, width, 100);
    
    //pushMatrix();
    
    //translate(330, 0);
    
     //fill(100);
    //triangle(600, height - 45, 615, height - 57, 615, height - 45);
    //fill(100);
    //triangle(400, height - 45, 385, height - 57, 385, height - 45);
    //fill(0, 0, 255);
    //rect(500, height - 25, 500, 50);
    
    //fill(#62450C);
    //rect(500, height - 92, 500, 15);
    
    //fill(#0C5F07);
    //rect(850, height - 50, 400, 100); 
    //popMatrix();
   
 }
    
//displays the lightning animation 
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
  
  //damages enemies by lightning
void killEnemyLightning(int x,int x2,int x3){
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytroop[i].getX()-x)<10)
           enemytroop[i].setToDead();
     }
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytroop[i].getX()-x2)<10)
           enemytroop[i].setToDead();
     }
     
     for(int i = 0;i<enemySize;i++){
         if(abs(enemytroop[i].getX()-x3)<10)
           enemytroop[i].setToDead();
     }
     
   }
  
}