
import g4p_controls.*;

String[] log; 
String messageString;
ArrayList<Message> msgs = new ArrayList<Message>();

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

  messageString = "";
  log = loadStrings("data/messages.txt");
  for (int i = 0; i < log.length; i++) {
    Message msg = new Message(log[i]);
    messageString += log[i] + "\n";
    msgs.add(msg);
  }
  messages.setText(messageString);
}

void draw() {
  background(chat.fill);
}
