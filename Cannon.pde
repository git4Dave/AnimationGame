
class Cannon{

  private  float cannonX, cannonY; 
  private float cannonLength = 40; // How long the cannon on the tank extends
  private float cannonAngle = PI*3/4;
  private float cannonAngleStep = 0.005; // step to change cannonAngle 
  private float cannonPower = 0;

  public Cannon(){
   cannonX = width-225; 
   cannonY = height/2 - 25;   
}

  public void display(){ 
   
    stroke(0); 
    fill(150);
    smooth(); 
     // invert the sign of the angle in order to point the cannon upwards (and not downwards) 
    //arc(cannonX - 8, cannonY, cannonLength*3/4, cannonLength/2, PI/4, 3*PI/2);
    
    fill(150);
    ellipse(cannonX - 4, cannonY - 3, 20, 20); 
    strokeWeight(10);
    line(cannonX, cannonY, cannonX+cannonLength*cos(-cannonAngle), cannonY+cannonLength*sin(-cannonAngle));
    strokeWeight(1); // reset to default widht
    //ellipse(cannonX - 5, cannonY, 20, 20); 
    
    
    fill(150);
    ellipse(cannonX, cannonY, 20, 20); 
    
    fill(0);
    ellipse(cannonX, cannonY, 10, 10); 
          
  }
  
}