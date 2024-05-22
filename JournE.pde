//boilerplate import g4p
import g4p_controls.*;
//importing font to use fonts and change size lol
import java.awt.Font;

//preset some variables for later use
//to be used for loading prompts from prompts.txt
String[] prompts;

//to be used for keeping track of keywords count and all messages
KeywordLog keywordLog = new KeywordLog();
MessageLog messageLog = new MessageLog();
//to be used to only ask 5 questions per day
int questionsAsked = 0;

//Greeting message each time you open JournE
String[] initialMessages = {
  "Bot," + day() + "," + month() + "," + year() + ",Hello. I'm Journ-E. Your personal journaling assistant.",
  "Bot," + day() + "," + month() + "," + year() + ",I'm here to help you with your journaling needs.",
  "Bot," + day() + "," + month() + "," + year() + ",How has your day been?",
};

//
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
  
  
  angry.setFont(new Font("Dialog", Font.PLAIN, 15));
  happy.setFont(new Font("Dialog", Font.PLAIN, 15));
  inspired.setFont(new Font("Dialog", Font.PLAIN, 15));
  sad.setFont(new Font("Dialog", Font.PLAIN, 15));
  stress.setFont(new Font("Dialog", Font.PLAIN, 15));
  tired.setFont(new Font("Dialog", Font.PLAIN, 15));
  work.setFont(new Font("Dialog", Font.PLAIN, 15));
  
  
  
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