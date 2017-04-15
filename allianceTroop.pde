class allianceTroop extends enemy_design{
  
  
  private int life = 4;
  private int x = 1200;
  private int y = 450;
  
  void init(){
    
  }
   
  void showAllianceTroop(){
    
    allianceInMove(x,y);
     x--;
     
  }//showAllianceTroop
  
  
}//end of allianceTroop