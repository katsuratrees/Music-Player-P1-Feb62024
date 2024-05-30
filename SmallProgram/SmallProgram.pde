//Global Variables
int appWidth, appHeight, brightness=255;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundImage;
Boolean lightMode=true, darkMode=false, nightMode=false;
//
void setup() {
  //Display
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Population
  backgroundImageX = appWidth*25/100;
  backgroundImageY = appHeight*10/100;
  backgroundImageWidth = appWidth*1/2;
  backgroundImageHeight = appHeight*2/4;
  //
  String road = "road";
  String backgroundImageName = road;
  String extension = ".jpg";
  String pathway = "../Images/";
//  String landscape_Square = "Landscape & Square Images/";
  //String portrait = "Portrait/";
  String backgroundImagePath = pathway + backgroundImageName + extension;
  //String path = pathway + portrait + backgroundImageName + extension;
  backgroundImage = loadImage(backgroundImagePath);
  //
  //DIV
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
void draw() {
  background(255); //Day Mode, Light Mode ON / OFF, WHITE allowed
  //NOTE: lightMode ON = max saturation
  if ( lightMode == true ) {
    brightness = 255;
  } else {
    brightness = 1; //USER Preference: lowest brightness
  }
  tint(255, brightness); //255 is max saturation, max colour
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() { 
    if ( key=='W' || key=='w') { //Day Mode, White Light Containing Blue Colour
   if ( lightMode == false) {
    lightMode = true; //Light Mode ON
  } else {
   lightMode = false; //Dark Mode ON, no darkMode Boolean required
  }
  } //End Day Mode
  //if () {} //End Night Mode
  
  //Key board short cuts for Mouse Pressing Prototyping
} //End keyPressed
//
//End MAIN Program
