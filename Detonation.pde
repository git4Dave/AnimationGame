class Detonation {
  float xCoordOfExplosion, yCoordOfExplosion; 
  float explosionXCoord, explosionYCoord;          
  float velocityInXDirection, velocityInYDirection;    
  float explosiveSize; 
  boolean removeExplosion=false;  
  boolean killedEnemy;    
  
  //Constructor that initializes the position, speed, size of explosion and a boolean that will be used to check if cannon ball killed enemy
  Detonation(float xCoords, float yCoords, float horizontalVelocity, float verticalVelocity, float sizeOfExplosionPiece, boolean killed)
  {
    xCoordOfExplosion = xCoords;
    yCoordOfExplosion = yCoords;   
    explosionXCoord = xCoordOfExplosion;
    explosionYCoord = yCoords;
    explosiveSize = sizeOfExplosionPiece;
    velocityInXDirection = horizontalVelocity;
    velocityInYDirection = verticalVelocity;
    killedEnemy = killed;
  }
  
  //Displays the explosion
  void display() {
    System.out.println(killedEnemy);
    noStroke();
    if(killedEnemy == false){
      fill(#FA2C03);
      explosiveSize-=.07;
      rect(explosionXCoord, explosionYCoord, explosiveSize, explosiveSize);
    }
    else{
      fill(0, 0, 255);
      explosiveSize-=.07;
      rect(explosionXCoord, explosionYCoord, explosiveSize, explosiveSize);
      
    }
  }
  
  //updates the movement of the explosive shards
  void explosionMaterialMovement() {
    explosionXCoord += velocityInXDirection;
    explosionYCoord += velocityInYDirection;
  } 
  
  //Explosion is deleted from array list if it exits the map
  void removeExplosionIfBallLeavesMap() {

    if (explosionXCoord<10) 
      removeExplosion=true;
    if (explosionYCoord<0) 
      removeExplosion=true;
    if (explosionXCoord>width) 
      removeExplosion=true;
    if (explosionYCoord>width) 
      removeExplosion=true;

    if (explosiveSize<=0) {
      removeExplosion=true;
    }
    
  } 
 } 