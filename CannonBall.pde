
class CannonBall {

  private float xCoordForCannonBall;
   private float yCoordForCannonBall;
   private float horizontalSpeed;  
   private float verticalSpeed;
   private float cannonBallWidth;
   private float life = 5;

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
  }

public boolean shouldDestroy(){
  
  if(yCoordForCannonBall>height - 5)
    return true;
  if(xCoordForCannonBall>width - 5)
    return true;
  if(xCoordForCannonBall < 5)
      return true;
  if(yCoordForCannonBall < 5)
      return true;
    
    return false;
}

public float getXcoordForCannonBall(){
  return xCoordForCannonBall;
}

public float getYcoordForCannonBall(){
  return yCoordForCannonBall;
}

  public void display() {
    fill(0);
    noStroke();
    ellipse(xCoordForCannonBall, yCoordForCannonBall, cannonBallWidth, cannonBallWidth);
  }
} 