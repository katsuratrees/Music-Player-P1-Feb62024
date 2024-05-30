/* Documentation
 Library: use Sketch / Import Library / Add Library / Minim
 Suporting Website: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer soundEffects1;
AudioPlayer playList1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
//
int appWidth, appHeight;
PImage backgroundImage;
int size;
PFont generalFont;
String quit="QUIT";
//
color backgroundColour, darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour Selector
Boolean dayMode=false;
Boolean lightMode=false; //Dark Mode starts app
String backgroundImageName = "road";
 String extension = ".jpg";
  String pathway = "../Images/";
  String backgroundImagepath = pathway + backgroundImageName + extension;
    backgroundImage = loadImage(backgroundImagePath);
    //
      rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//
void setup() {
  background(backgroundColour);
  //image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Gogogo" : "Nuhuhuh turn dat phun";
  println(displayInstructions);
  //
  minim = new Minim(this);
  String extension = ".mp3";
  String quitButtonSound = "CarDoorClosing";
  String pathwaySoundEffects = "../AudioFiles/"; //Relative Path
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension );
  //println ( path );
  soundEffects1 = minim.loadFile ( path );
  //playList1 = minim.loadFile ( path );
  //
  //Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Castellar", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
  //
  divs();
  //
  //Variable Population
  //if ( hour()>=9 && hour()<=17 ) backgroundColour = whiteBackground;
  //if ( hour()<9 && hour()>17 ) backgroundColour = darkBackground;
  if ( dayMode==true && hour()>=9 && hour()<=17 ) {
    if ( lightMode==true)
    backgroundColour = whiteBackground;
    foregroundColour = black;
    path = pathway + backgroundImageName + extension;
    backgroundImage = loadImage( path );
  } else {
  backgroundColour = black;
  foregroundColour = whiteBackground; 
  } //End light mode
    if ( lightMode==false) {
    } else {
        backgroundColour = whiteBackground;
    foregroundColour = black;
  }  //End light mode
  else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //Note: if(hour()<9&&hour()>17)
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
  }
  //
  //soundEffects1.loop();
} //End setup
//
void draw() {
  //Display
  // background(backgroundColour); //Hardcoded Backgorund Colour Out, use IF to change
  if ( lightMode == true ) { //Boolean keyBind
 // //Caution: See setup
//    backgroundImageName = ; 
    path2 = pathway + Road + extension;
    backgroundImage = loadImage( path );
  } 
  else {
   // backgroundImageName = ;
    path = pathway + Lights + extension;
    backgroundImage = loadImage( path1 );
  }
//  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  fill(foregroundColour);
  //
  //Quit Button
  //fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) fill(yellow);
  fill(purple);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    fill(yellow);
    rect( quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7);
  } else {
    fill(purple);
  
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //
  //Albumn Cover Image
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  //
  }
  
  //println(mouseX, mouseY);
  //
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q')
  {
    soundeffect_1();
  }
  if (key==CODED && keyCode==ESC) //Hardcoded QUIT, no sound available
  {
    soundeffect_1();
  }
  if (key=='W' || key=='w') ; //CAUTION, must return to "Request White, Light Mode"
   if ( lightMode == false) {
    lightMode = true; //Light Mode ON
  } else {
   lightMode = false; //Dark Mode ON, no darkMode Boolean required
  }
  //soundEffects1.loop(0);
} //End keyPressed
//
void mousePressed() { //Listener
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
  {
    soundeffect_1();
  }
} //End mousePressed
//

// End MAIN Program
