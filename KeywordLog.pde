class KeywordLog {
  String[] angry;
  String[] sad;
  String[] happy;
  String[] inspired;
  String[] stress;
  String[] tired;
  String[] work;
  
  int countAngry;
  int countSad;
  int countHappy;
  int countInspired;
  int countStress;
  int countTired;
  int countWork;
  
  String logString;
  String[] existingLog;
  
  int[] emotions = {
    countAngry, countSad, countHappy, countInspired, countStress, countTired, countWork
  };
  
  KeywordLog() {
  }
  
  void init() {
    this.angry = loadStrings("data/keywords/angry.txt");
    this.sad = loadStrings("data/keywords/sad.txt");
    this.happy = loadStrings("data/keywords/happy.txt");
    this.inspired = loadStrings("data/keywords/inspired.txt");
    this.stress = loadStrings("data/keywords/stress.txt");
    this.tired = loadStrings("data/keywords/tired.txt");
    this.work = loadStrings("data/keywords/work.txt");
    
    existingLog = loadStrings("data/keywordLog.txt");
    this.countAngry = int(existingLog[0]);
    this.countSad = int(existingLog[1]);
    this.countHappy = int(existingLog[2]);
    this.countInspired = int(existingLog[3]);
    this.countStress = int(existingLog[4]);
    this.countTired = int(existingLog[5]);
    this.countWork = int(existingLog[6]);
  }
  
  void match(String s) {
    println(s, s.contains("angry"));
    if (s.contains("angry")) {
      this.countAngry++;
    }
    if (s.contains("sad")) {
      this.countSad++;
    }
    if (s.contains("happy")) {
      this.countHappy++;
    }
    if (s.contains("inspired")) {
      this.countInspired++;
    }
    if (s.contains("stress")) {
      this.countStress++;
    }
    if (s.contains("tired")) {
      this.countTired++;
    }
    if (s.contains("work")) {
      this.countWork++;
    }
        
    updateLog();
  }
  
  void updateLog() {
    logString = "";
    
    if (this.countAngry > 0) {
      logString += this.countAngry + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countSad > 0) {
      logString += this.countSad + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countHappy > 0) {
      logString += this.countHappy + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countInspired > 0) {
      logString += this.countInspired + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countStress > 0) {
      logString += this.countStress + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countTired > 0) {
      logString += this.countTired + "\n";
    } else {
      logString += "0\n";
    }
    if (this.countWork > 0) {
      logString += this.countWork + "\n";
    } else {
      logString += "0\n";
    }
    
    PrintWriter file = createWriter("data/keywordLog.txt");
    file.print("");
    file.print(logString);
    file.flush();
    file.close();
  }
}