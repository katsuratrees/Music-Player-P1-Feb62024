import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Minim Library
//
//Global Variables
AudioPlayer playList1;
AudioPlayer soundEffects1;
Minim minim; //creates object to access all functions
int numberSoundEffects = 4; //DEV Verify, OS able to count (CS20 Solution)
int numberMusicSongs = 8; //DEV Verify, OS able to count (CS20 Solution)
AudioPlayer[] playList = new AudioPlayer[ numberMusicSongs ]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[ numberSoundEffects ]; //"Play List" for Sound Effects
AudioMetaData[] playListMetaData = new AudioMetaData [ numberMusicSongs ];
int currentSong = 0; //JAVA starts at 0, no for all languages
//
int appWidth, appHeight;
//
Boolean looping=false;
//
String testingOnly = "1";
PFont generalFont;
//
color black=#000000, white=#FFFFFF, nightInk=#FFFF00;
void setup() {
  //Display
  //size(600, 400); //width, height //400, 500
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
  //Landscape is HARDCODED
  //divs();
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  //println(displayInstructions);
  //
  //Font Code
  createFont( "Perpetua", appHeight );
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String pathwayMusic = "../AudioFiles/";
    String quitButtonSound = "CarDoorClosing";
  String Ghost = "Ghost_Walk";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  println ( pathwayMusic+Ghost+extension );
  String pathQuitButtonSound = sketchPath( pathwayMusic + quitButtonSound +extension);
    String pathGhostSong = sketchPath( pathwayMusic+Ghost+extension);
 println ( "Absolute Pathway:", pathGhostSong );
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  playList[0] = minim.loadFile ( pathGhostSong );
  playListMetaData[0] = playList[0].getMetaData();
  //
  //playList1.loop(0);
  //
}
//End setup
void draw() {
  //Instrpection of Booleans and Associated Varaiables
  println( "Song Position", playList[currentSong].position(), "Song Length", playList[currentSong].length() );
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()!=-1 ) println("There are", playList[currentSong].loopCount(), "loops left.");
  if ( playList[currentSong].isLooping() && playList[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  //println("Keyboard Looping Question", looping);
  if ( !playList[currentSong].isPlaying() ) println( "Nothing is playing, Pick a Song" );
  if ( playList[currentSong].isPlaying() && !playList[currentSong].isLooping() ) println("Play Once");
  //
  /* Auto Play Code for Future Use
   Contains instructions from Key Board Short Cuts
   Note: PAIN Thresholds, 3 minutes & 75%, can be variables
   Note: Variables can be set in a Menu Button
   */
  if ( playList[currentSong].isPlaying() ) {
    if ( !playList[currentSong].isLooping() && looping==true) looping=false; //Protect .loop() from .rewind() as STOP Loop
  } else if ( looping == false && !playList[currentSong].isPlaying() && playList[currentSong].length() < 180000 ) { //PAIN Minutes is 3 minutes, 180s, 180,000ms
    //TRUE: if song is less than 3 minutes, STOP, I want to hear it from the beginning
    //.pause() in keyPressed() {} is actually STOP
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else if ( looping == false && !playList[currentSong].isPlaying()  && ( playList[currentSong].position() > playList[currentSong].length()*0.75 ) ) { //Calc PAIN # as % of Song
    //TRUE: if 75% played, we need a STOP & Rewind Button
    //.pause() in keyPressed() {} is actually STOP
    playList[currentSong].rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else {
    /* Future coding
     currentSong = currentSong + 1; //currentSong++; currentSong+=1
     playList[currentSong].play();
     */
  }
  //MUTE Fix
  if ( playList[currentSong].isMuted() ) println( "Muted" ); //End MUTE Fix
  /* Previous IF-Else
   if ( playList[currentSong].isPlaying() ) {
   //Empty IF, TRUE
   } else {
   playList[currentSong].rewind(); //CAUTION: !.isPlaying() & .rewind() = STOP
   }
   */
   //
   //Printing Txt to consolie | Canvasa
  fill(black); //Note: background for rect()
  rect(width*1/4, height*0, width*1/2, height*1/10); //Text DIV
  fill(white); //Ink
  textAlign (CENTER, TOP);
  textAlign (CENTER, CENTER);
  int size = 30; 
  textFont(generalFont, size);
  //printArray ( playListMetaData );
  //printArray ( playListMetaData[0] );
  println( "Title is:", playListMetaData[0].title() );
  text(playListMetaData[0].title(), width*1/4, height*0, width*1/2, height*1/10);
  //text(testingOnly, width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
   
} //End draw
//
void keyPressed() {
  if ( key=='P' || key=='p' ) { //Play Pause Button
    //How much of the song should play before the Pause Button is actually a rewind button
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  } //End Play Pause Button
  if ( key=='L' || key=='l' ) { //Loop Once
    playList[currentSong].loop(1);
    looping = true;
  } //End Loop Once
  if ( key=='I' || key=='i' ) { //Loop Infinite Times
    playList[currentSong].loop();
    looping = true;
  } //End Loop Infinite Times
  if ( key=='S' || key=='s' ) { // STOP Button
    playList[currentSong].pause();
    playList[currentSong].rewind(); //Affects LOOP Times
    looping = false;
  } // End STOP Button
  if ( key=='M' || key=='m' ) {
  if ( playList[currentSong].isMuted() ) {
    playList[currentSong].unmute();
  } else {
    playList[currentSong].mute() ;
  }
  }//End Mutie mute
  //
} //End keyPressed
//
void mousePressed() {} //End mousPressed
//
//End MAIN Program
//
