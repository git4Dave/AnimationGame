class Item{
  private int starX;///if you get a star, your life is +20
  private int starY;
  private int starSize = 20;
  private boolean isStarOnScreen = false;//flag if the star is currently on the screen
  private int lightning_count = 0;
  
  int getStarX(){
      return starX;
  }
  
  int getStarY(){
      return starY;
  }
  
  void showLighningCount(){
    text("lightning:"+lightning_count,900,100);
  }
  
  void updateStarY(){
      starY+=1;//will move down 
  }
  
  boolean getIsStarOnScreen(){
      return isStarOnScreen;
  }
  
  void setIsStarOnScreen(int x){
    if(x == 0)  
      isStarOnScreen = true;
     else
      isStarOnScreen = false;
  }
  
  void showStar(){
    fill(255,255,0);
    ellipse(starX,starY,starSize,starSize);
    fill(0,green,0);
  }
  
  void obtain_lightning(){
   
     ///if the star is obtained 
    if(abs(mouseY - starY) < 5  && abs((mouseX-5)-(starX-8)) < 10){
      lightning_count++;
      setIsStarOnScreen(1); ///if star is obtained, then star will disappear
    }
    
  }
  
  ///if rand < 0.01 star will appear.
  boolean isStar(){
    float rand = random(0,50); 
    println(rand);
    if(rand<0.5){///feels like this happen every 5-10 seconds
      float randX = random(0,heights);
      starY = 0;
      starX = (int)randX;
      isStarOnScreen = true;
      return true;
    }
      return false;
  }
  
  
    ////function I added
    ///deals with star 
  void getStar(int x_current,int y_current){
    
      if(!item.getIsStarOnScreen()){
          if(item.isStar())
            item.setIsStarOnScreen(0);///set flag to true
      }
      else{
        item.showStar();///display star 
        item.updateStarY();
        item.obtain_lightning();
      }
      
      ///if the star gets to all the way to the buttom, then set flag to false
      if(item.getStarY()>heights)
        item.setIsStarOnScreen(1);///set flag to false
  }
  
  void gain_item(int numOfRainDrop,int x_current,int y_current){
    
    for(int i =0;i<numOfRainDrop;i++){
       ///if the diffrence of x_current and y_current and moving objec of x,y are less than 5
       ///then it considers as obtaining the item.
     if(abs(mouseY - y_current) < 5  && abs(mouseX-(x_current-8)) < 10){
        fill(255,0,0);
        textSize(70);
        text("Damaged !",height/2,height/2);
        _life.getDameged(5);
       }
    }
  }
}//end of Item Class