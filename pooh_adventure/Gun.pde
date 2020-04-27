class Gun {
  float x, y; //location
  float speed; //speed
  float w,h; //size
  boolean finished = false;
    int m= 135;
 PImage fire1;

  Gun() {
    w = 20;
    h = 10;
    x = width;
    y = random(height);
    speed = random(5,2);
   fire1 = loadImage("fire1.PNG");
    }
  
  void display(){
    imageMode(CENTER);
image(fire1,x,y,18,29);
}
 
 
  
  void move() {
    x -=speed;
  }
  
  
   
 boolean reachedGun() {
  dist(m, mouseY,x,y);
   if (dist(m, mouseY,x,y)<=40){
  
  return true;
}else{
  return false;
}
 }

  
 
  // If the gun is caught
  void finished() {
    finished = true;
  }


}