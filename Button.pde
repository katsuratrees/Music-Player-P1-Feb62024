int numberSoundEffects = 4; //DEV Verify, OS able to count (CS20 Solution)
int numberMusicSongs = 8; //DEV Verify, OS able to count (CS20 Solution)
AudioPlayer[] playList = new AudioPlayer[ numberMusicSongs ]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[ numberSoundEffects ]; //"Play List" for Sound Effects
AudioMetaData[] playListMetaData = new AudioMetaData [ numberMusicSongs ];
int currentSong = 0; //JAVA starts at 0, no for all languages
//
Boolean looping=false;
//
String testingOnly = "1";
//
void buttons() {
  //Display
  //size(600, 400); //width, height //400, 500
  fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
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
void functions() {
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
   
} //End draw
//
void keys() {
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
//End MAIN Program
//
