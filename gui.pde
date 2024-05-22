/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void TextBoxChange(GTextField source, GEvent event) { //_CODE_:TextBox:338386:
  
  if (event == GEvent.ENTERED && !(TextBox.getText().equals(" "))) {
    keywordLog.match(TextBox.getText());
    messageLog.addMessage(
      "You",
      year(),
      month(),
      day(),
      TextBox.getText()
    );
    if (questionsAsked <= 5) {
      messageLog.addMessage(
        "Bot",
        year(),
        month(),
        day(),
        prompts[int(random(prompts.length))]
      );
      questionsAsked++;
    } 
    if (questionsAsked == 6) {
      messageLog.addMessage(
        "Bot",
        year(),
        month(),
        day(),
        "That\'s all for now! Have a good rest of your day. Come back later for more reflection. Feel free to keep typing things in here throughout your day."
      );
    }
    
    messages.setText(messageLog.displayAll()); // Updates the message log
    TextBox.setText(""); // Clears text input box
  }
} //_CODE_:TextBox:338386:

public void goMessage(GButton source, GEvent event) { //_CODE_:messageTab:576134:
  TextBox.setVisible(true);
  messages.setVisible(true);
  databutton.setVisible(false);
  
  println("messageTab - GButton >> GEvent." + event + " @ " + millis());
  
} //_CODE_:messageTab:576134:

public void goSettings(GButton source, GEvent event) { //_CODE_:SettingsTab:776413:
  angry.setVisible(false);
  happy.setVisible(false);
  inspired.setVisible(false);
  sad.setVisible(false);
  stress.setVisible(false);
  tired.setVisible(false);
  work.setVisible(false);
  TextBox.setVisible(false);
  messages.setVisible(false);
  
  databutton.setVisible(true);
  
  println("SettingsTab - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:SettingsTab:776413:

public void goStats(GButton source, GEvent event) { //_CODE_:StatsTab:339897:
  angry.setVisible(true);
  happy.setVisible(true);
  inspired.setVisible(true);
  sad.setVisible(true);
  stress.setVisible(true);
  tired.setVisible(true);
  work.setVisible(true);
  
    
  angry.setText("Angry score \n" + str(keywordLog.countAngry));
  happy.setText("Happy score \n" + str(keywordLog.countHappy));
  inspired.setText("Inspired score \n" + str(keywordLog.countInspired));
  sad.setText("Sad score \n" + str(keywordLog.countSad));
  stress.setText("Stress score \n" + str(keywordLog.countStress));
  tired.setText("Tired score \n" + str(keywordLog.countTired));
  work.setText("Work score \n" + str(keywordLog.countWork));

  TextBox.setVisible(false);
  messages.setVisible(false);
  databutton.setVisible(false);
  
  
  
  
  println("StatsTab - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:StatsTab:339897:

public void messageschange(GTextArea source, GEvent event) { //_CODE_:messages:510315:
  println("messages - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:messages:510315:

public void clearData(GButton source, GEvent event) { //_CODE_:databutton:801346:
  messageLog.clear();
  keywordLog.reset();

  println("databutton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:databutton:801346:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("JournE");
  TextBox = new GTextField(this, 0, 600, 400, 60, G4P.SCROLLBARS_NONE);
  TextBox.setPromptText("Press here to send a message...");
  TextBox.setOpaque(true);
  TextBox.addEventHandler(this, "TextBoxChange");
  messageTab = new GButton(this, 0, 0, 130, 30);
  messageTab.setIcon("file.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  messageTab.setText("Messages");
  messageTab.addEventHandler(this, "goMessage");
  SettingsTab = new GButton(this, 270, 0, 130, 30);
  SettingsTab.setIcon("gear.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  SettingsTab.setText("Settings");
  SettingsTab.addEventHandler(this, "goSettings");
  StatsTab = new GButton(this, 135, 0, 130, 30);
  StatsTab.setIcon("chart.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  StatsTab.setText("Stats");
  StatsTab.addEventHandler(this, "goStats");
  messages = new GTextArea(this, 0, 30, 400, 570, G4P.SCROLLBARS_VERTICAL_ONLY);
  messages.setOpaque(true);
  messages.addEventHandler(this, "messageschange");
  databutton = new GButton(this, 0, 50, 130, 30);
  databutton.setText("Clear Data");
  databutton.setLocalColorScheme(GCScheme.RED_SCHEME);
  databutton.addEventHandler(this, "clearData");
  angry = new GLabel(this, 0, 120, 100, 100);
  angry.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  angry.setText("My label");
  angry.setOpaque(false);
  happy = new GLabel(this, 100, 120, 100, 100);
  happy.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  happy.setText("My label");
  happy.setOpaque(false);
  inspired = new GLabel(this, 200, 120, 100, 100);
  inspired.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  inspired.setText("My label");
  inspired.setOpaque(false);
  sad = new GLabel(this, 300, 120, 100, 100);
  sad.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  sad.setText("My label");
  sad.setOpaque(false);
  stress = new GLabel(this, 33, 300, 100, 100);
  stress.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  stress.setText("My label");
  stress.setOpaque(false);
  tired = new GLabel(this, 150, 300, 100, 100);
  tired.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  tired.setText("My label");
  tired.setOpaque(false);
  work = new GLabel(this, 267, 300, 100, 100);
  work.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  work.setText("My label");
  work.setOpaque(false);
}

// Variable declarations 
// autogenerated do not edit
GTextField TextBox; 
GButton messageTab; 
GButton SettingsTab; 
GButton StatsTab; 
GTextArea messages; 
GButton databutton; 
GLabel angry; 
GLabel happy; 
GLabel inspired; 
GLabel sad; 
GLabel stress; 
GLabel tired; 
GLabel work; 
