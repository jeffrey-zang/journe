// Message class which contains details for content, date, and sender of the message

class Message {
  String content;
  Date date;
  String sender;

  Message(String s, int d, int m, int y, String c) {
    content = c;
    date = new Date(d, m, y);
    sender = s;
  }

  String display() { // returns a string with the format; "Sender: content - dd/mm/yy"
    return this.sender + ": " +  this.content + " - " + this.date.day + "/" + this.date.month + "/" + this.date.year + "\n";
  }
}