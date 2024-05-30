//Global Variables // ../ starts from the program its in
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
PImage albumCoverImage;
//Note: path are local variables
String albumCoverImagePath; //Building Global Var from Local Var, System Resources
void setup() {
  //Display
  fullScreen(); //displayWidth, DisplayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population 
  albumCoverX = appWidth*25/100;
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*2/4;
  albumCoverHeight = appHeight*2/5;
  //
  //Variable Population
  //String albumCoverImagePath;
  String forest = "hallerbos-forest-halle-belgium-2-BEAUTFORESTS0721-4ff5b556613e4814b5b7165f8851de39.jpg";
  String extensionJPG = ".jpg";
  String pathway = "../Images-musicplayer/";
  String landscape_Square = "Landscape & Square Images/";
  albumCoverImagePath = pathway + landscape_Square + forest + extensionJPG;
  albumCoverImage = loadImage( albumCoverImagePath );
  //
  //Image Aspect Ratio Calculations
  float smalleralbumCoverDimension = ( albumCoverHeight > albumCoverWidth ) ? albumCoverWidth : albumCoverHeight;
  float albumCoverImageWidthPixel = 800;
  float albumCoverImageHeightPixel = 600;
  float albumCoverAspectRatio = ;
  float largeralbumCoverDimension = ;
  //
  //DIVS
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End Setup
//
void draw () {
  image ( albumCoverImage, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End Draw
//
void mousePressed () {
} //End mousePressed
//
void keyPressed () {
} //End keyPressed
//
//End MAIN Program
