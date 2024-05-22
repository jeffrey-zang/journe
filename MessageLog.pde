class MessageLog {
  ArrayList<Message> msgs = new ArrayList<Message>();
  String[] log;

  String messageString;
  String logString;

  MessageLog() {}
  
  void init() {
    log = loadStrings("data/messages.txt");
    messageString = "";
    
    for (int i = 0; i < log.length; i ++) {
      String[] parts = split(log[i], ",");
      String partmessage = "";
      for (int t = 4; t < parts.length; t ++) { 
        if (t > 4) {
          partmessage += ","; 
        }
        partmessage += parts[t];
      }
      this.msgs.add(new Message(
        parts[0],
        int(parts[1]),
        int(parts[2]),
        int(parts[3]),
        partmessage
      ));
      Message msg = this.msgs.get(this.msgs.size() - 1);
      messageString += msg.display();
    }
    
    for (int i = 0; i < initialMessages.length; i ++) {
      String[] parts = split(initialMessages[i], ",");
      this.msgs.add(new Message(
        parts[0],
        int(parts[1]),
        int(parts[2]),
        int(parts[3]),
        parts[4]
      ));
      Message msg = this.msgs.get(this.msgs.size() - 1);
      messageString += msg.display();
    }
    
    messages.setText(messageString);
  }

  void addMessage(String sender, int day, int month, int year, String content) {
    messageString = "";
    logString = "";
    
    this.msgs.add(new Message(sender, day, month, year, content));
    messageString += this.displayAll();
    println(messageString);
    messages.setText(messageString);

    for (int i = 0; i < this.msgs.size(); i++) {
      Message msg = this.msgs.get(i);
      logString += msg.sender + "," + msg.date.day + "," + msg.date.month + "," + msg.date.year + "," + msg.content + "\n";
    }

    PrintWriter file = createWriter("data/messages.txt");
    file.print("");
    file.print(logString);
    file.flush();
    file.close();
  }

  String displayAll() {
    messageString = "";
    for (int i = 0; i < this.msgs.size(); i++) {
      Message msg = this.msgs.get(i);
      messageString += msg.display();
    }
    return messageString;
  }

  void clear() {
    messageString = "";
    logString = "";

    this.msgs.clear();
    messages.setText("");
    PrintWriter file = createWriter("data/messages.txt");
    file.print("");
    file.flush();
    file.close();
  }
}