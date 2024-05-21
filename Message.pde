class Message {
  String content;
  Date date;
  String sender;

  Message(String c, int d, int m, int y, String s) {
    content = c;
    date = new Date(d, m, y);
    sender = s;
  }

  String display() {
    return this.sender + ": " + this.content + " - " + this.date.day + "/" + this.date.month + "/" + this.date.year + "\n";
  }
}