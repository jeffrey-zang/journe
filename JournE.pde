// boilerplate import g4p
import g4p_controls.*;
// importing font to use fonts and change size lol
import java.awt.Font;

// preset some variables for later use
//to be used for loading prompts from prompts.txt
String[] prompts;

// to be used for keeping track of keywords count and all messages
KeywordLog keywordLog = new KeywordLog();
MessageLog messageLog = new MessageLog();
// to be used to only ask 5 questions per day
int questionsAsked = 0;

// Greeting message each time you open JournE
String[] initialMessages = {
  "Bot," + day() + "," + month() + "," + year() + ",Hello. I'm Journ-E. Your personal journaling assistant.",
  "Bot," + day() + "," + month() + "," + year() + ",I'm here to help you with your journaling needs.",
  "Bot," + day() + "," + month() + "," + year() + ",How has your day been?",
};

// initialize chat window (size and color)
Chat chat = new Chat(
  400,
  660,
  color(255, 255, 255)
);

// initialize settings window
public void settings() {
  size(chat.width, chat.height);
}

// boilerplate
void setup() {
  createGUI();

  // Get data from txt files for keywords and messages
  keywordLog.init();
  messageLog.init();
  
  // Open to messages tab always on start up: everything else not visible
  databutton.setVisible(false);
  databutton.setVisible(false);
  messages.setTextEditEnabled(false);
    angry.setVisible(false);
  happy.setVisible(false);
  inspired.setVisible(false);
  sad.setVisible(false);
  stress.setVisible(false);
  tired.setVisible(false);
  work.setVisible(false);
  
  // Prepare stats page font and size
  angry.setFont(new Font("Dialog", Font.PLAIN, 15));
  happy.setFont(new Font("Dialog", Font.PLAIN, 15));
  inspired.setFont(new Font("Dialog", Font.PLAIN, 15));
  sad.setFont(new Font("Dialog", Font.PLAIN, 15));
  stress.setFont(new Font("Dialog", Font.PLAIN, 15));
  tired.setFont(new Font("Dialog", Font.PLAIN, 15));
  work.setFont(new Font("Dialog", Font.PLAIN, 15));
  
  //get database of all prompts
  prompts = loadStrings("data/prompts.txt");
  
}

void draw() {
  background(chat.fill);
}