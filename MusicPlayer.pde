//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float SettingsX, SettingsY, SettingsWidth, SettingsHeight;
float SeekBarX, SeekBarY, SeekBarWidth, SeekBarHeight;
//
void setup () {
  println("HelloWorld"); //print("Hello"); print("World");
  //Concatenation & Inspecting Variables with Character Escapes
  println("Width: "+width+"\tHeight: "+height+"\t\tDisplay Width: "+displayWidth+"\tDisplay Height: "+displayHeight);
  //NULL: all values are NULL until size(), arithemtic errors
  println( "Example Formula: add 1 to the width", width+1 );
  //
  //Display: CANVAS & Full Screen
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //println(appWidth, appHeight);
  //Display Geomtry: Landscape, Portrait, Square
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun"; 
  println(displayInstructions);
  //CONTINUE HERE: concatenation & display geometry
  //declare landscape, portrait, or square with ternary operator
  //
  //Populate
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //Layout DIVs
  //rect(X, Y, Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  int albumCoverX = appWidth*1/2;
  int albumCoverY = appHeight*3/4;
  //rect(centerX*5/4, centerY*1/5, appWidth*1/3, appHeight*1/2);
  rect(albumCoverX*1/2, albumCoverY*3/4, albumCoverWidth*6/8, albumCoverHeight*5/8);
  //rect(SettingsX, SettingsY, SettingsWidth, SettingsHeight);
  //rect(SeekBarX, SeekBarY, SeekBarWidth, SeekBarHeight);
  //rect(equalizer1X, equalizer1Y, equalizer1Width, equalizer1Height);
  //rect(equalizer2X, equalizer2Y, equalizer2Width, equalizer2Height);
  //rect(equalizer3X, equalizer3Y, equalizer3Width, equalizer3Height);
  //rect(playButtonX = 80/100, playButtonY = 80/100 , playButtonWidth = 20/100, playButtonHeight = 20/100);
 // rect(songNameX, songNameY, songNameWidth, songNameHeight):
  //rect();
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
