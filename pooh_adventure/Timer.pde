class Timer {
 int savedTime; 
 int totalTime;
 Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }  
  void setTime(int t) {
    totalTime = t;
  }
  
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
    int passedTime = millis()- savedTime;
    if(passedTime > totalTime){
      times--;
      return true;    
    }else{
      return false;
    }
  }
  
    void finished() {
    finished = true;
  }

}