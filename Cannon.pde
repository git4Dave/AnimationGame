
class Cannon{

  private  float xCoordForCannon, YCoordForCannon; 
  private float lengthOfCannonBarrel = 40; // How long the cannon on the tank extends
  private float angle = PI*3/4;

  public Cannon(){
   xCoordForCannon = width-225; 
   YCoordForCannon = height/2 - 25;   
}

  public void display(){ 
   
    stroke(0); 
    smooth(); 
    
    fill(150);
    strokeWeight(1);
    ellipse(xCoordForCannon - 2, YCoordForCannon - 3, 20, 20); 
    
    strokeWeight(10);
    line(xCoordForCannon, YCoordForCannon, xCoordForCannon+lengthOfCannonBarrel*cos(-angle), YCoordForCannon+lengthOfCannonBarrel*sin(-angle));
    strokeWeight(1); 
    
    fill(150);
    ellipse(xCoordForCannon, YCoordForCannon, 20, 20); 
    
    fill(0);
    ellipse(xCoordForCannon, YCoordForCannon, 10, 10); 
          
  }
  
 void moveCannonAngle(){ 
  this.angle=-atan2(mouseY-YCoordForCannon,mouseX-xCoordForCannon);
}
  
}