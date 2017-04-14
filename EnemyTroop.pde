import java.util.*;
class EnemyTroop extends enemy_design{
  
  private int size = 20;
  private int enemySize = 30;
  private boolean isAlive;
  private float speed;
  private int x ;
  private int y = 500;
  private boolean Moveforward = true;
  private boolean enemyMoveGoUp = false;
  final private int ceiling = 250; 
  final private int ground = 500;
  private float movingDownSpeed;
  
  EnemyTroop(){
    this.isAlive = true;
  };
  
  void setJumpValueForEnemy(){
     float rand = random(2,6);
     this.movingDownSpeed = rand; 
  }
  
  void setUpInitialPositionForEnemy(){
    float randSpeed = random(2,5);
    float randX = random(-300,10);
    this.speed = randSpeed;//each enemy will have a diffrent moving speed
    this.x = (int)randX;
  }
  
  void showEnery(){
    
     enemyInMove(x,y);
    
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
  
  void enemyMoveUP(){
    if(!enemyMoveGoUp){
      if(y<ground){
         y++; 
      }
      else{
        float randNumberForGoUp = random(0,15);
        if(randNumberForGoUp<0.05)
          setEnemyMoveUPToTrue();
      }
    }
    else{
        if(y>=ceiling)
            y--;
        else
          setEnemyMoveUPToFalse();
    
    }
  }//end of enemyMoveUP
  
  
  void setEnemyMoveUPToFalse(){
    enemyMoveGoUp = false;
  }
  
  void setEnemyMoveUPToTrue(){
    enemyMoveGoUp = true;
  }
  
  void checkAttackers(int ex,int ey){
    
    //if the attacker is close enough, move back from it.
    if(abs(this.y - ey) < 100 && (ex - this.x)<100 && (ex - this.x)>0)
          setMovebackward();
          
    ///once the attcker is gone then start moving forward again
    //(ex - this.x)<0 for once the attacker (cannon ball) is passed
    if(!Moveforward && ey>500 || (ex - this.x)<0)
          setMoveForward();
  }
  
  void killEnemy(){
    //kill enemy
    if(abs(mouseX-x)< 5 &&abs(mouseY-Y) < 5 ){
      setToDead();//
      text("enery killed",width/2,height/2 + 250);
    }
  }//end of killEnemy
  
  
  int getX(){
     return x;
  }
  int getY(){
      return y;
  }
  void setToAlive(){
     this.isAlive = true; 
  }
  
  void setToDead(){
     this.isAlive = false;
     x = 0;//set the x value to x;
  }
  
  boolean  getIsAlive(){
     return this.isAlive;
  }
  
}//end of EnemyTroop
