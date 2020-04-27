
class User {
  float x;  // location
 int z;
PImage copy;
User(){
    x = 100;
copy = loadImage("copy.PNG");
    imageMode(CENTER);
  }

  
  void display() {
 image(copy,x,mouseY,74,85);
  }  
    boolean intersect(Gun d) {
    float distance = dist(100, mouseY, d.x, d.y); 

    if (distance ==0) { 
      return true;
    } else {
      return false;
    }
  }
  
  void finished(){
    finished = true;
  }
}