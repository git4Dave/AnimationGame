class Castle{
 
  private int castleHealth;
  
  public Castle(){
    castleHealth = 500;  
  }
  
  public void display(){
    rectMode(CENTER);
    noStroke();
    
    fill(0, 0, 255);
    triangle(877, height - 380, 830, height - 400, 877, height - 425);
    
    fill(0);
    rect(875, height - 350, 5, 150);
    
    fill(#4A4D4A);
    rect(875, height - 200, 250, 200);
    
    fill(20);
    arc(875, height - 100, 100, 225, PI, 2*PI);
    
    fill(#4A4D4A);
    rect(776, 300, 52, 50);
    rect(754, 275, 8, 10);
    rect(769, 275, 8, 10);
    rect(784, 275, 8, 10);
    rect(798, 275, 8, 10);
    
    fill(20);
    arc(776, 315, 20, 60, PI, 2*PI);
    
    rect(840, height - 275, 15, 15);
    rect(875, height - 275, 15, 15);
    rect(910, height - 275, 15, 15);
    
    fill(#4A4D4A);
    rect(width - 25, 300, 50, 50);
    rect(width-46, 275, 8, 10);
    rect(width-32, 275, 8, 10);
    rect(width-18, 275, 8, 10);
    rect(width-4, 275, 8, 10);
    
    fill(20);
    arc(width - 25, 315, 20, 60, PI, 2*PI);
    
  }
  
}