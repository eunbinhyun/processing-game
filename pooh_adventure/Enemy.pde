class Enemy{
  float p, q, speed;
  int m =604;
PImage monster2;
  float tempR=100;

  Enemy() {
  monster2 = loadImage("monster2.JPG");
  speed = 1.5;

  p = 650;
  q = 300;
  }
  void display()
  {  imageMode(CENTER);
  
image(monster2,p,q,98,119);

}
  
void move()
 { 
    q = q+speed;
  if((q<45) || (q>height-45)) {
  speed = speed*-1; 
  }
}
 boolean reachedEnemy() {
  dist(m, mouseY,p,q);
   if (dist(m, mouseY+10,p,q)<=47){
       
    HP = HP-0.0008;
  
  return true;
}else{
  
  return false;
}
 }

  
   
  void finished() {
    finished = true;
  }
}