import g4p_controls.*;

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
  
  Keywords.setVisible(false);
  databutton.setVisible(false);
  keywordsbutton.setVisible(false);
  PromptTime.setVisible(false);
  databutton.setVisible(false);
  promptText.setVisible(false);
  messages.setTextEditEnabled(false);

  prompts = loadStrings("data/prompts.txt");
}

void draw() {
  background(chat.fill);
}