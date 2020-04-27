User users;
Enemy en;
Timer timer;
Red1 red1;
Gun[] guns;

int totalGun = 0;
int x;
int r=20;
float HP = 10;

int n = 5;
int d;
float tempR;
boolean gameOver = false;
boolean gameWin = false;
int score = 2000;
int lives = 10;
int times = 130;
PImage monster;
PImage copy;
PFont f;

void setup(){
size(800,600);
users = new User();
guns = new Gun[100];
timer= new Timer(200);
red1 = new Red1();
timer.start();
en = new Enemy();
f = createFont("Arial", 12, true);
score = 2000-millis();


}

void draw(){
  background(255);
  users.display();
  en.display();
  en.move();
 
 //if the game is over
 if (gameOver) {
   textFont(f,48);
   textAlign(CENTER);
   fill(0);
   text("YOU LOSE", width/2, height/2);
   timer.finished();
   textFont(f,32);
     text("TRY AGAIN!", width/2, 350);  
 }else{
  
   if (timer.isFinished()) {
     if(totalGun < guns.length) {
       guns[totalGun] = new Gun();
       totalGun++;
     }
     timer.start();
   }
   if (gameWin) {
     textFont(f,48);
     textAlign(CENTER);
     fill(0);
     text("YOU WIN", width/2, height/2);
     textFont(f,32);
     text("SCORE: "+score, width/2, 350);
     users.finished();
     timer.finished();
     red1.finished();
   }
   
   //move and display all guns
   for (int i = 0; i<totalGun;i++) {
     if(!guns[i].finished) {
       guns[i].move();
       guns[i].display();

     
     if(guns[i].reachedGun()){
         guns[i].finished();
         //live is lost
         lives--;
         //lives reach 0 game over
         if(lives <=0) {
           gameOver = true;
         }
       }
       if(en.reachedEnemy()){
         HP=HP-0.0008;
         if(HP<=0.0008){
           gameWin=true;
       guns[i].finished();
     }
       }
        if (times==0){
          gameOver  = true;}
 
     if(en.reachedEnemy()){
         //lives reach 0 game over
         if(HP==0) {
         
           gameWin = true;
               }
       }    
       
       
     //when user meet guns, they hurt 
       if (users.intersect(guns[i])) {  
          guns[i].finished();
          lives--;
       }
       
       
       
          
        }
      
   textFont(f, 24);
    fill(255,0,0);
    text("Lives left: " + lives, 15, 25);
    rect(15, 35, lives*10, 18);
    fill(0);
    fill(0,0,255);
    text("HP",width/2+100,25);
    rect(width/2+100,35,HP*25,18);
    fill(0);
    text("Times Left: " + times, 300,25);

   }
   }
}

  

  void mousePressed() {
    red1.display();
   
  }

 