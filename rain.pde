/*


this was shin's original code for rain.
I am going to make adjustments so that it fits well on the rest of the design.



*/


//final String STRING = "！＠＃＄％＾＆＊（）＿＋｝｛」「”；’；？・？？？？？？！*-/ABCDEFDHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789＋－！＄＠％＾＆＆＾＊＆＠＆あいうえおかきくけこさしすせそ破魔矢らは高校アイウエオリピバハマヤラバヤユヨコウサシスセソカキクケコナニヌネノキイ";
//final String STRING = "ABCDEFDHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789?!@#$%&*+???????!!!!";
final String STRING = "01";
int green = 100;//value for green color

class MatrixRain{
  int x;
  int y;
  int w;//size of the rain drop
  boolean changeWord = true;//flag for changing the word
  String word;
  
  MatrixRain(int x,int y,int w){
     this.x= x;
     this.y =y;
     this.w =w;
  }
  
  void dorain(int num,int speed){
    String wrd = changeWords();
    int col = (row-1-num)*4;
    
    if(col >= green+10)
      fill(0,255,0);
    else
      fill(0,col,0);
      
    text(wrd,x,y,w,w);
 
    calcValues(speed);
  }
  
   void calcValues(int speed){
    y += speed;
  }
  
  String changeWords(){
      float num = random(0,2);
      
      if(changeWord){//first time word is generated.
          char a = returnWord();
          String b = String.valueOf(a);
          this.word = b;//update the wod
          changeWord = false;
          return b;
      }else if(num < 0.1){//if the 
          char a = returnWord();
          String b = String.valueOf(a);
          this.word = b;
          return b;
      }else{
         //return the same word. no changes in word
         return this.word; 
      }
  }
  
 char returnWord() {
  return STRING.charAt((int)random(STRING.length()));
 }
 
 int getY(){
    return this.y;
 }
 int getX(){
    return this.x;
 }
 void setY(int y){
    this.y = y;
 }

}//end of matrixRain
