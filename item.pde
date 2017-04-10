class Item{
  private int starX_lightning;///if you get a star, your life is +20
  private int starY_lightning;
  private int starX_life;///if you get a star, your life is +20
  private int starY_life;
  private int starSize = 20;
  private boolean isLightningOnScreen = false;//flag if the star is currently on the screen
  private boolean isLifeOnScreen = false;//flag if the star is currently on the screen
  private int lightning_count = 0;
  
  int getStarX_lightning(){
      return starX_lightning;
  }
  
  int getStarY_lightning(){
      return starY_lightning;
  }
  int getStarX_life(){
      return starX_life;
  }
  
  int getStarY_life(){
      return starY_life;
  }
  
  int getLightningCount(){
    return lightning_count;
  }
  
  void decrementLightningCount(){
      lightning_count--;
  }
  
  void showLifeCount(){
    text("lightning:"+lightning_count,900,100);
  }
  
  void showLighningCount(){
    text("lightning:"+lightning_count,900,100);
  }
  
  void updateStarY_lightning(){
      starY_lightning+=2;//will move down 
  }
  
  void updateStarY_life(){
      starY_life+=1;//will move down 
  }
  
  boolean getIsLightningOnScreen(){
      return isLightningOnScreen;
  }
  boolean getIsLifeOnScreen(){
      return isLifeOnScreen;
  }
  
  void setIsLightningOnScreen(int x){
    if(x == 0)  
      isLightningOnScreen = true;
     else
      isLightningOnScreen = false;
  }
  
  void setIsLifeOnScreen(int x){
    if(x == 0)  
      isLifeOnScreen = true;
     else
      isLifeOnScreen = false;
  }
  
  void showLightning_ball(){
    fill(255,255,0);
    ellipse(starX_lightning,starY_lightning,starSize,starSize);
    fill(0,green,0);
  }
  
  void showLife_ball(){
    fill(0,255,0);
    ellipse(starX_life,starY_life,starSize,starSize);
    fill(0,green,0);
  }
  
  void obtain_lightning(){
   
     ///if the star is obtained 
    if(abs(mouseY - starY_lightning) < 5  && abs((mouseX-5)-(starX_lightning-8)) < 10){
      lightning_count++;
      setIsLightningOnScreen(1); ///if star is obtained, then star will disappear
    }
  }
  
  void obtain_life(){
   
     ///if the star is obtained 
    if(abs(mouseY - starY_life) < 5  && abs((mouseX-5)-(starX_life-8)) < 10){
      _life.recoverLife(50);
      setIsLifeOnScreen(1); ///if star is obtained, then star will disappear
    }
  }
  
  ///if rand < 0.01 star will appear.
  boolean isLightning(){
    float rand = random(0,50); 
    println(rand);
    if(rand<0.1){///feels like this happen every 5-10 seconds
      float randX = random(0,heights);
      starY_lightning = 0;
      starX_lightning = (int)randX;
      isLightningOnScreen = true;
      return true;
    }
      return false;
  }
  
    ///if rand < 0.01 star will appear.
  boolean isLife(){
    float rand = random(0,50); 
    println(rand);
    if(rand<0.3){///feels like this happen every 5-10 seconds
      float randX = random(0,heights);
      starY_life = 0;
      starX_life = (int)randX;
      isLifeOnScreen = true;
      return true;
    }
      return false;
  }
 
    ///deals with lightning 
  void get_Lightning(){
    
      if(!item.getIsLightningOnScreen()){
          if(item.isLightning())
            item.setIsLightningOnScreen(0);///set flag to true
      }
      else{
        item.showLightning_ball();///display lightning ball 
        item.updateStarY_lightning();
        item.obtain_lightning();
      }
      
      ///if the star gets to all the way to the buttom, then set flag to false
      if(item.getStarY_lightning()>heights)
        item.setIsLightningOnScreen(1);///set flag to false
  }
  
      ///deals with star 
  void get_Life(){
    
      if(!item.getIsLifeOnScreen()){
          if(item.isLife())
            item.setIsLifeOnScreen(0);///set flag to true
      }
      else{
        item.showLife_ball();///display lightning ball 
        item.updateStarY_life();
        item.obtain_life();
      }
      
      ///if the star gets to all the way to the buttom, then set flag to false
      if(item.getStarY_life()>heights)
        item.setIsLifeOnScreen(1);///set flag to false
  }
  
}//end of Item Class
