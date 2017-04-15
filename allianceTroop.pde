class allianceTroop extends enemy_design{
  
  
  private int life = 4;
  private int x = 1200;
  private int y = 450;
  private int targetValue;//target value. this is the array number of target enemy
  
  void init(int target){
    this.targetValue = target;
    println("target value = "+target);
  }
   
  void showAllianceTroop(){
    
    allianceInMove(x,y);
    if(!enemytroop[targetValue].getIsAlive()){
      println(targetValue+" is dead");
      targetValue = getNewTrget();
      println("new value "+targetValue+" is assigned");
    }
    
    allianceTroopAttacksEnemy();
  }
  
  
  void allianceTroopAttacksEnemy(){
    
    if(enemytroop[targetValue].getX() - this.x >0)
       this.x++;
     else
       this.x--;
       
    if(enemytroop[targetValue].getY() - this.y >0)
       this.y++;
     else
       this.y--;
    
  }//allianceTroopAttacksEnemy
  
  
  int getNewTrget(){
     int newTarget = getTargetForAllianceTroop();
     return newTarget;
  }
  
  void allianTroopAttackEnemy(){
    
    for(int j = 0;j<alliTroop.size();j++){
    }
    
    
  }//allianTroopAttackEnemy
  
  
}//end of allianceTroop
