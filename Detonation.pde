class Detonation {
  float xCoordOfExplosion, yCoordOfExplosion; 
  float explosionXCoord, explosionYCoord;          
  float velocityInXDirection, velocityInYDirection;    
  float explosiveSize; 
  boolean removeExplosion=false;  
  boolean killedEnemy;    
  
  Detonation(float xCoords, float yCoords, float horizontalVelocity, float verticalVelocity, float sizeOfExplosionPiece,boolean killedEnemy)
  {
    xCoordOfExplosion = xCoords;
    yCoordOfExplosion = yCoords;   
    explosionXCoord = xCoordOfExplosion;
    explosionYCoord = yCoords;
    explosiveSize = sizeOfExplosionPiece;
    velocityInXDirection = horizontalVelocity;
    velocityInYDirection = verticalVelocity;
    killedEnemy= killedEnemy;
  }
  
  void display() {
    noStroke();
    if(!killedEnemy){
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
  
  void explosionMaterialMovement() {
    explosionXCoord += velocityInXDirection;
    explosionYCoord += velocityInYDirection;
  } 
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