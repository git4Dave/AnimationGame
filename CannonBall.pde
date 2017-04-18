class CannonBall {

  private float xCoordForCannonBall;
   private float yCoordForCannonBall;
   private float horizontalSpeed;  
   private float verticalSpeed;
   private float cannonBallWidth;
   private float detonateCannonBall = 1;
   public boolean hitAnEnemy = false;

//constructor initializes the ball location, speed, and width
  CannonBall(float xCoord, float yCoord, float speedForHorizontalDirection, float speedForVerticalDirection, float widthOfCannonBall) {
    xCoordForCannonBall = xCoord;
    yCoordForCannonBall = yCoord;
    cannonBallWidth = widthOfCannonBall;
     horizontalSpeed = speedForHorizontalDirection; 
    verticalSpeed = speedForVerticalDirection; 
  }

//updates the cannon ball movement and calls other functions to determine if the ball should explode
 public void cannonBallMovement() {
    xCoordForCannonBall = xCoordForCannonBall + horizontalSpeed; 
    yCoordForCannonBall = yCoordForCannonBall + verticalSpeed;
    
    endBall();
   if (detonateBall()){
        detonateCannonBallWhenEnemyIsNotKilled();
    }
  }
  
  //if cannon ball hits the ground then it will detonate
  public boolean endBall(){
    if(yCoordForCannonBall>height - 110){
     detonateCannonBall = -1; 
     return true;
    }
    return false;
  }

//Checks whether cannonBall exits the map and detonates it
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

// Detonation will be red since enemy is not killed yet. Uses a for loop to create a random number of shards that will disperse on impact

  public void detonateCannonBallWhenEnemyIsNotKilled () {
    hitAnEnemy = true;
    System.out.println("Max Explosions is " );  
    int maxExplosions= int(random(4, 200));
      System.out.println("Max Explosions is " + maxExplosions);
      for (int i=0; i<maxExplosions; i+=1) {   
        explosions.add( new Detonation(random(xCoordForCannonBall-3, xCoordForCannonBall+3), random(yCoordForCannonBall+9, yCoordForCannonBall+12), random(-1.3, 1.3), random(-2.7, .6), 2, false)); 
      }
    }
    
    //Same as above, but detonation will be blue since enemy is killed
    public void detonateCannonBallWhenEnemyIsKilled(){
      hitAnEnemy = true;
      int maxExplosions= int(random(300, 500));
      for (int i=0; i<maxExplosions; i+=1) {   
        explosions.add( new Detonation(random(xCoordForCannonBall-3, xCoordForCannonBall+3), random(yCoordForCannonBall+9, yCoordForCannonBall+12), random(-1.3, 1.3), random(-2.7, .6), 2, true));
      }
    } 

//Used in other functions to have a cannon ball explode if it returns true

public boolean detonateBall(){
  return detonateCannonBall == -1;
}

public float getXcoordForCannonBall(){
  return xCoordForCannonBall;
}

public float getYcoordForCannonBall(){
  return yCoordForCannonBall;
}

//Displays each cannon ball shot even while moving

public void display() {
    fill(0);
    noStroke();
    ellipse(xCoordForCannonBall, yCoordForCannonBall, cannonBallWidth, cannonBallWidth);
  }

}