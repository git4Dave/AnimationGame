import java.util.*;
class EnemyTroop extends enemy_design{
  
  private int size = 20;
  private int enemySize = 30;
  private boolean isAlive;
  private float speed;
  private int x ;
  private int y = 480;
  private boolean Moveforward = true;
  private boolean enemyMoveGoUp = false;
  final private int ceiling = 250; 
  final private int ground = 480;
  private float movingDownSpeed;
  private int enemyLife = 3;
  private boolean enemryGetsHitAt = false;
  
  EnemyTroop(){
    this.isAlive = true;
  };
  
  void setJumpValueForEnemy(){
     float rand = random(2,5);
     this.movingDownSpeed = rand;
  }
  
  void setUpInitialPositionForEnemy(){
    float randSpeed = random(5,10);
    float randX = random(-300,10);
    this.speed = randSpeed;//each enemy will have a diffrent moving speed
    this.x = (int)randX;
  }
  
  void showEnery(){
    
     //enemyInMove(x,y);
     drawEnemy(x,y);
    
    if(Moveforward){
       if(x <= 1050)
           x = x+ (int)speed;//moving forward 
    }
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
         y= y+(int)movingDownSpeed;; 
      }
      else{
        float randNumberForGoUp = random(0,15);
        if(randNumberForGoUp<0.25)
          setEnemyMoveUPToTrue();
      }
    }
    else{
        if(y>=ceiling)
            y= y-(int)movingDownSpeed;
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
    if(abs(this.y - ey) < 50 && abs(ex - this.x)<150){
          setMovebackward();
      }
    //println((ex - this.x));
 //   println(this.x);
    if( (ex - this.x)<0 || (ey - this.y)>50 || this.x< 50 || this.enemryGetsHitAt){
          this.enemryGetsHitAt = false;
          setMoveForward();
    }
  }
  
  
  public boolean checkEnemyHitByCannon(float cannonX, float cannonY){
   
    if(abs(getX()-cannonX)<10 && abs(getY()-cannonY)<30){
        this.enemryGetsHitAt = true;
        return true;
    }
     return false;
    
  }//end of checkEnemyHitByCannon
  
  public void ExecuteCannonBlast(boolean hit, CannonBall can){
    if(hit){ 
        if(enemyLife == 0){
               can.detonateCannonBallWhenEnemyIsKilled();
               setToDead();
            }
        else if(enemyLife != 0){
           can.detonateCannonBallWhenEnemyIsNotKilled();
           enemyGetDamaged();
        }
    }
        
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
  
  void setEnemyLife(int newLife){
    this.enemyLife = newLife;
  }
  
  void enemyGetDamaged(){
    this.enemyLife--;
  }
  
  void IsEnemyDead(){
    if(enemyLife == 0)
      setToDead();
  }
  
  void setToDead(){
     this.isAlive = false;
     x = 0;//set the x value to x;
  }
  
  boolean  getIsAlive(){
     return this.isAlive;
  }
  
}//end of EnemyTroop
