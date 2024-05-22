// MessageLog class which is responsible for logging messages

class MessageLog {
  ArrayList<Message> msgs = new ArrayList<Message>(); // arraylist of all messages
  String[] log;

  String messageString; // temporary variables for message and log strings
  String logString;

  MessageLog() {} // constructor
  
  void init() { // initializer function
    log = loadStrings("data/messages.txt"); // loads existing messages
    messageString = "";
    
    for (int i = 0; i < log.length; i ++) { // adds existing messages
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
    
    for (int i = 0; i < initialMessages.length; i ++) { // adds initial bot messages
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

  void addMessage(String sender, int day, int month, int year, String content) { // method for adding a new message
    messageString = "";
    logString = "";
    
    this.msgs.add(new Message(sender, day, month, year, content));
    messageString += this.displayAll();
    println(messageString);
    messages.setText(messageString);

    for (int i = 0; i < this.msgs.size(); i++) { // updates log of all messages
      Message msg = this.msgs.get(i);
      logString += msg.sender + "," + msg.date.day + "," + msg.date.month + "," + msg.date.year + "," + msg.content + "\n";
    }

    PrintWriter file = createWriter("data/messages.txt");
    file.print("");
    file.print(logString);
    file.flush();
    file.close();
  }

  String displayAll() { // returns a string to display all messages
    messageString = "";
    for (int i = 0; i < this.msgs.size(); i++) {
      Message msg = this.msgs.get(i);
      messageString += msg.display();
    }
    return messageString;
  }

  void clear() { // clears all message data
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