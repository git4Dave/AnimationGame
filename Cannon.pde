
class Cannon{

  private  float xCoordForCannon, YCoordForCannon, xCoordForCannon2, YCoordForCannon2; 
  private float lengthOfCannonBarrel = 40; // How long the cannon on the tank extends
  private float angle = PI*3/4;
   private float angle2 = PI*3/4;

  public Cannon(){
   xCoordForCannon = width-370; 
   YCoordForCannon = height/2 - 25;   
   
   xCoordForCannon2 = width/2-160; 
   YCoordForCannon2 = height/2 - 25; 
}

  public void display(){ 
   
    stroke(0); 
    smooth(); 
    
    fill(150);
    strokeWeight(1);
    ellipse(xCoordForCannon - 2, YCoordForCannon - 3, 20, 20); 
    
    strokeWeight(11);
    line(xCoordForCannon, YCoordForCannon, xCoordForCannon+lengthOfCannonBarrel*cos(-angle), YCoordForCannon+lengthOfCannonBarrel*sin(-angle));
    strokeWeight(1); 
    
    fill(150);
    ellipse(xCoordForCannon, YCoordForCannon, 20, 20); 
    
    fill(0);
    ellipse(xCoordForCannon, YCoordForCannon, 10, 10); 
          
  }

  public void displaySecondCannon(){ 
   
    stroke(0); 
    smooth(); 
    
    fill(150);
    strokeWeight(1);
    ellipse(xCoordForCannon2 - 2, YCoordForCannon2 - 3, 20, 20); 
    
    strokeWeight(11);
    line(xCoordForCannon2, YCoordForCannon2, xCoordForCannon2+lengthOfCannonBarrel*cos(-angle2), YCoordForCannon2+lengthOfCannonBarrel*sin(-angle2));
    strokeWeight(1); 
    
    fill(150);
    ellipse(xCoordForCannon2, YCoordForCannon2, 20, 20); 
    
    fill(0);
    ellipse(xCoordForCannon2, YCoordForCannon2, 10, 10); 
          
  }
  
  
 float moveCannonAngle(){ 
  this.angle=-atan2(mouseY-YCoordForCannon,mouseX-xCoordForCannon);
  return angle;
}

 float moveCannonAngle2(){ 
  this.angle2=-atan2(mouseY-YCoordForCannon2,mouseX-xCoordForCannon2);
  return angle2;
}
  
}