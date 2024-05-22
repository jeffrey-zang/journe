import g4p_controls.*;
import java.awt.Font;


String[] prompts;

KeywordLog keywordLog = new KeywordLog();
MessageLog messageLog = new MessageLog();

int questionsAsked = 0;

String[] initialMessages = {
  "Bot," + day() + "," + month() + "," + year() + ",Hello. I'm Journ-E. Your personal journaling assistant.",
  "Bot," + day() + "," + month() + "," + year() + ",I'm here to help you with your journaling needs.",
  "Bot," + day() + "," + month() + "," + year() + ",How has your day been?",
};

Chat chat = new Chat(
  400,
  660,
  color(255, 255, 255)
);

public void settings() {
  size(chat.width, chat.height);
}

void setup() {
  createGUI();

  keywordLog.init();
  messageLog.init();
  
  databutton.setVisible(false);
  databutton.setVisible(false);
  messages.setTextEditEnabled(false);

  prompts = loadStrings("data/prompts.txt");
  
  
  angry.setFont(new Font("Dialog", Font.PLAIN, 20));
  happy.setFont(new Font("Dialog", Font.PLAIN, 20));
  inspired.setFont(new Font("Dialog", Font.PLAIN, 20));
  sad.setFont(new Font("Dialog", Font.PLAIN, 20));
  stress.setFont(new Font("Dialog", Font.PLAIN, 20));
  tired.setFont(new Font("Dialog", Font.PLAIN, 20));
  work.setFont(new Font("Dialog", Font.PLAIN, 20));
  
  
  
  angry.setText("Angry score \n" + str(keywordLog.countAngry));
  happy.setText("Happy score \n" + str(keywordLog.countHappy));
  inspired.setText("Inspired score \n" + str(keywordLog.countInspired));
  sad.setText("Sad score \n" + str(keywordLog.countSad));
  stress.setText("Stress score \n" + str(keywordLog.countStress));
  tired.setText("Tired score \n" + str(keywordLog.countTired));
  work.setText("Work score \n" + str(keywordLog.countWork));

  
  
  
}

void draw() {
  background(chat.fill);
}