import g4p_controls.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.*;

String[] log; 
String msgs; 

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
  log = loadStrings("data/messages.txt");
  msgs = join(log,"\n");
  label1.setText(msgs);
  
  try {
    String[] command1 = {"bash", "./script.sh"};
    Process process = Runtime.getRuntime().exec(command1);

    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
    String line;
    while ((line = reader.readLine()) != null) {
      println(line);
    }
  } catch (IOException e) {
    println("Error executing bash command: " + e.getMessage());
  }
}

void draw() {
  background(chat.fill);
}