
class CannonBall {

  private float xCoordForCannonBall;
   private float yCoordForCannonBall;
   private float horizontalSpeed;  
   private float verticalSpeed;
   private float cannonBallWidth;
   private float detonateCannonBall = 1;
   private boolean enemyTroopIsKilled = false;

  CannonBall(float xCoord, float yCoord, float speedForHorizontalDirection, float speedForVerticalDirection, float widthOfCannonBall) {
    xCoordForCannonBall = xCoord;
    yCoordForCannonBall = yCoord;
    cannonBallWidth = widthOfCannonBall;
     horizontalSpeed = speedForHorizontalDirection; 
    verticalSpeed = speedForVerticalDirection; 
  }

 public void cannonBallMovement() {
    xCoordForCannonBall = xCoordForCannonBall + horizontalSpeed; 
    yCoordForCannonBall = yCoordForCannonBall + verticalSpeed;
    
    endBall();
    
    if (detonateBall()){
        detonateCannonBall();
    }
  }
  
  public boolean endBall(){
    if(yCoordForCannonBall>height - 110){
     detonateCannonBall = -1; 
     return true;
    }
    return false;
  }

public boolean shouldDestroy(){
  
  if(yCoordForCannonBall>height - 5){
    detonateCannonBall = -1;
    return true;
  }
  if(xCoordForCannonBall>width - 5){
    detonateCannonBall = -1;
    return true;
  }
  if(xCoordForCannonBall < 5){
    detonateCannonBall = -1;
    return true;
  }
  if(yCoordForCannonBall < 5){
    detonateCannonBall = -1;
    return true;
  }
    
    return false;
}

public boolean detonateBall(){
  return detonateCannonBall == -1;
}

public float getXcoordForCannonBall(){
  return xCoordForCannonBall;
}

public float getYcoordForCannonBall(){
  return yCoordForCannonBall;
}

  void detonateCannonBall () {
    if(enemyTroopIsKilled){
      int maxExplosions= int(random(4, 200));
      for (int i=0; i<maxExplosions; i+=1) {   
        explosions.add( new Detonation(random(xCoordForCannonBall-3, xCoordForCannonBall+3), random(yCoordForCannonBall+9, yCoordForCannonBall+12), random(-1.3, 1.3), random(-2.7, .6), 2, false)); 
      }
    }
    else{
      int maxExplosions= int(random(300, 500));
      for (int i=0; i<maxExplosions; i+=1) {   
        explosions.add( new Detonation(random(xCoordForCannonBall-3, xCoordForCannonBall+3), random(yCoordForCannonBall+9, yCoordForCannonBall+12), random(-1.3, 1.3), random(-2.7, .6), 2, true));
      }
    }
  } 

  public void display() {
    fill(0);
    noStroke();
    ellipse(xCoordForCannonBall, yCoordForCannonBall, cannonBallWidth, cannonBallWidth);
  }
} 