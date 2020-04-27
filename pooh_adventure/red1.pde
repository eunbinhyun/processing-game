class Red1{    

  
 Red1(){
   
 }
 
void display() {
noStroke();
strokeCap(ROUND);
fill(255,0,0);
rect( 180,mouseY+10,465,20);
}
 void finished(){
    finished = true;
  }
}