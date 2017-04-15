
class User {

  ArrayList<CannonBall> cannonballs;  
  PVector position, velocity; // contains x and y...
  double cannonBallSpeed =  4.4;
  int shootingAmount = 200; 
  int lastFired=millis();
  int lastFired2=millis();
  int cannonCount = 70;

  User() {
    cannonballs  = new ArrayList(); 
  }

  void shootCannon() { 
  float horizontalSpeed;
    float verticalSpeed; 
    if (shootingAmount <= millis()-lastFired) {
      if (cannonCount>0) {
        lastFired=millis();

        float angleOfTheCannon = getCannonAngle();
        
        horizontalSpeed = cos(angleOfTheCannon) * 3;
        verticalSpeed = -sin(angleOfTheCannon) * 3;
        
        horizontalSpeed*= cannonBallSpeed;
        verticalSpeed*= cannonBallSpeed;
        
        cannonballs.add ( new CannonBall( (width-370), (height/2 - 25), horizontalSpeed, verticalSpeed, 10 ));
      } 
    }
  } 

  float getCannonAngle() {
    float angleOfTheCannon=-atan2(mouseY - (height/2 - 25), mouseX- (width-370));
    return angleOfTheCannon;
  }
  
  public int getSizeOfCannonBallArrayList(){
      return cannonballs.size() - 1;
  }
  
  public float getXCoordOfCannonBallInArrayListAtIndex(int i){
     return cannonballs.get(i).getXcoordForCannonBall();
  }
  
  public float getYCoordOfCannonBallInArrayListAtIndex(int i){
     return cannonballs.get(i).getYcoordForCannonBall();
  }
  
  public CannonBall getCannonBallInArrayListAtIndex(int i){
     return cannonballs.get(i);
  }

  void display() {

    // draw cannonballs
    for (CannonBall currentCannonball : cannonballs ) {  
      currentCannonball.cannonBallMovement();
      currentCannonball.display();
    }
     
    //Removes the cannonBalls if they exit map to reduce memory usage
    for (int i = cannonballs.size()-1; i >= 0; i--) { 
     CannonBall currentCannonball = cannonballs.get(i);
      if (currentCannonball.shouldDestroy() || currentCannonball.endBall() || currentCannonball.hitAnEnemy) {
        cannonballs.remove(i);
      }
    }
  }
  
  
  
  
  
  void shootCannon2() { 
  float horizontalSpeed;
    float verticalSpeed; 
    if (shootingAmount <= millis()-lastFired2) {
      if (cannonCount>0) {
        lastFired2=millis();

        float angleOfTheCannon = getCannonAngle2();
        
        horizontalSpeed = cos(angleOfTheCannon) * 3;
        verticalSpeed = -sin(angleOfTheCannon) * 3;
        
        horizontalSpeed*= cannonBallSpeed;
        verticalSpeed*= cannonBallSpeed;
        
        cannonballs.add ( new CannonBall( (width/2-160), (height/2 - 25), horizontalSpeed, verticalSpeed, 10 ));
      } 
    }
  } 

  float getCannonAngle2() {
    float angleOfTheCannon=-atan2(mouseY - (height/2 - 25), mouseX- (width/2-160));
    return angleOfTheCannon;
  }
 
  void displaySecond() {

    // draw cannonballs
    for (CannonBall currentCannonball : cannonballs ) {  
      currentCannonball.cannonBallMovement();
      currentCannonball.display();
    }
     
    //Removes the cannonBalls if they exit map to reduce memory usage
    for (int i = cannonballs.size()-1; i >= 0; i--) { 
     CannonBall currentCannonball = cannonballs.get(i);
      if (currentCannonball.shouldDestroy() || currentCannonball.endBall() || currentCannonball.hitAnEnemy) {
        cannonballs.remove(i);
      }
    }
  }
}