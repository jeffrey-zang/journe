import g4p_controls.*;

Chat chat = new Chat(
  300,
  800,
  color(255, 255, 255)
);

public void settings() {
  size(chat.width, chat.height);
}


void setup() {
  createGUI();
  
}


void draw() {
  background(chat.fill);
}
