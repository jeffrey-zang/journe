import g4p_controls.*;

String[] log; 
String msgs; 

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
  log = loadStrings("data/messages.txt");
  msgs = join(log,"\n");
  messages.setText(msgs);
  
}


void draw() {
  background(chat.fill);
}
