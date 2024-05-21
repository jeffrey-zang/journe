
import g4p_controls.*;

String[] log; 
ArrayList<Message> msgs = new ArrayList<Message>();

String messageString;
String logString;
String[] prompts;

int questionsAsked = 0;

String[] initialMessages = {
  "Bot," + day() + "," + month() + "," + year() + ",Hello. I'm Journ-E. Your personal journaling assistant.",
  "Bot," + day() + "," + month() + "," + year() + ",I'm here to help you with your journaling needs.",
  "Bot," + day() + "," + month() + "," + year() + ",How has your day been?",
};

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

  prompts = loadStrings("data/prompts.txt");

  log = loadStrings("data/messages.txt");
  messageString = "";
  
  for (int i = 0; i < log.length; i ++) {
    String[] parts = split(log[i], ",");
    String partmessage = "";
      for(int t = 4; t < parts.length; t ++) { 
        if (t > 4) {
         partmessage += ","; 
        }
        partmessage += parts[t];
      }
    msgs.add(new Message(
      parts[0],
      int(parts[1]),
      int(parts[2]),
      int(parts[3]),
      partmessage
    ));
    Message msg = msgs.get(msgs.size() - 1);
    messageString += msg.display();
  }

  for (int i = 0; i < initialMessages.length; i ++) {
    String[] parts = split(initialMessages[i], ",");
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