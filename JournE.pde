
import g4p_controls.*;

String[] log; 
ArrayList<Message> msgs = new ArrayList<Message>();

String messageString;
String logString;

Chat chat = new Chat(
  300,
  660,
  color(255, 255, 255)
);

public void settings() {
  size(chat.width, chat.height);
}

void setup() {
  createGUI();
  
  Keywords.setVisible(false);
  databutton.setVisible(false);
  keywordsbutton.setVisible(false);
  PromptTime.setVisible(false);
  databutton.setVisible(false);
  promptText.setVisible(false);
  
  messages.setTextEditEnabled(false);

  log = loadStrings("data/messages.txt");
  messageString = "";
  for (String line : log) {
    println(line);
    if (line.length() == 0) {
      continue;
    }
    String[] parts = split(line, ",");
    msgs.add(new Message(
      parts[0],
      int(parts[1]), 
      int(parts[2]),
      int(parts[3]),
      parts[4]
    ));
    Message msg = msgs.get(msgs.size() - 1);
    messageString += msg.display();
  }
  messages.setText(messageString);
}

void draw() {
  background(chat.fill);
}