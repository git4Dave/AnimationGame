import java.util.*;
class EnemyTroop{
  
  private int size = 20;
  private int enemySize = 30;
  private boolean isAlive;
  private float speed;
  private int x ;
  private int y = 500;
  private boolean Moveforward = true;
  EnemyTroop(){
    this.isAlive = true;
  };
  
  void init(){
    float randSpeed = random(2,5);
    float randX = random(-250,5);
    this.speed = randSpeed;//each enemy will have a diffrent moving speed
    this.x = (int)randX;
  }
  
  void showEnery(){
    ellipse(x,y,size,size);
    
    if(Moveforward)
      x = x+ (int)speed;//moving forward 
    else
      x = x- (int)speed;//moving backard
  }
  
  void setMoveForward(){
      this.Moveforward = true;
  }
  
  void setMovebackward(){
      this.Moveforward = false;
  }
  
  void checkAttackers(int ex,int ey){
    
    //if the attacker is close enough, move back from it.
    if(abs(this.y - ey)< 100 && (ex - this.x)<150 && (ex - this.x)>0)
          setMovebackward();
          
    ///once the attcker is gone then start moving forward again
    if(!Moveforward && ey>500)
          setMoveForward();
  }
  
  void killEnemy(){
    //kill enemy
    if(abs(mouseX-x)< 5 &&abs(mouseY-Y) < 5 ){
      setToDead();//
      text("enery killed",width/2,height/2 + 250);
    }
  }//end of killEnemy
  
  void setToDead(){
     this.isAlive = false; 
     x = 0;//set the x value to x;
  }
  
  int getX(){
     return x; 
  }
  int getY(){
      return y;
  }
  void setToAlive(){
     this.isAlive = true; 
  }
  
  boolean  getIsAlive(){
      return this.isAlive;
  }
  
}//end of EnemyTroop
