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

public void Typing(GTextField source, GEvent event) { //_CODE_:TextBox:338386:
  texetarea1_change1.AppendText("TextBox - GTextField >> GEvent." + event + " @ " + millis());
  if(event == GEvent.ENTERED) {
   print("yippee"); 
  }
} //_CODE_:TextBox:338386:

public void goMessage(GButton source, GEvent event) { //_CODE_:messageTab:576134:
  println("messageTab - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:messageTab:576134:

public void goSettings(GButton source, GEvent event) { //_CODE_:SettingsTab:776413:
  println("SettingsTab - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:SettingsTab:776413:

public void goStats(GButton source, GEvent event) { //_CODE_:StatsTab:339897:
  println("StatsTab - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:StatsTab:339897:

public void textarea1_change1(GTextArea source, GEvent event) { //_CODE_:textarea1:942327:
  println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea1:942327:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("JournE");
  TextBox = new GTextField(this, 0, 630, 300, 30, G4P.SCROLLBARS_NONE);
  TextBox.setPromptText("Press here to send a message...");
  TextBox.setOpaque(true);
  TextBox.addEventHandler(this, "Typing");
  messageTab = new GButton(this, 0, 0, 100, 30);
  messageTab.setText("Messages");
  messageTab.addEventHandler(this, "goMessage");
  SettingsTab = new GButton(this, 200, 0, 100, 30);
  SettingsTab.setText("Settings");
  SettingsTab.addEventHandler(this, "goSettings");
  StatsTab = new GButton(this, 100, 0, 100, 30);
  StatsTab.setText("Stats");
  StatsTab.addEventHandler(this, "goStats");
  textarea1 = new GTextArea(this, 1, 35, 298, 593, G4P.SCROLLBARS_NONE);
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
}

// Variable declarations 
// autogenerated do not edit
GTextField TextBox; 
GButton messageTab; 
GButton SettingsTab; 
GButton StatsTab; 
GTextArea textarea1; 
