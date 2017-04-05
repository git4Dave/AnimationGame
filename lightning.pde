class Lightning{
  
  private int size = 20;
  
  ///beautiful recursive function, oh this is so beautiful
  ///start is starting value for y
  ///end is the ending value for y 
  void drawLightning(int start,int end,int x,int start2,int end2,int x2,int start3,int end3,int x3){

    ///x range 
    float dx = random(-15,15);
    float dx2 = random(-25,25);
    float dx3 = random(-10,10);
    
    ///when the lightning reached the buttom, then return
    if(start >= end)
      return;
     
    ///big lightning
    strokeWeight(7);
    stroke(135,206,250);
    line(x,start,x+dx,start+5);
    
    ///mid lightning
    strokeWeight(3);
    stroke(0,0,128);
    line(x2,start2,x2+dx2,start2+5);
    
    ///small lightning
    strokeWeight(2);
    stroke(240,248,255);
    line(x3,start3,x3+dx3,start3+5);

    ///recursively call the drawLightning()
    drawLightning(start+5,end,x+(int)dx,start2+5,end2,x2+(int)dx2,start3+5,end3,x3+(int)dx3);
    
  }
  
  
}//enf of Lightning 