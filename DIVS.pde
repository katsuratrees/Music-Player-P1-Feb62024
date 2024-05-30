float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float TitleX, TitleY, TitleWidth, TitleHeight;
float ProgressBarX, ProgressBarY, ProgressBarWidth, ProgressBarHeight;
float ProgressBarSide1X, ProgressBarSide1Y, ProgressBarSide1Width, ProgressBarSide1Height;
float ProgressBarSide2X, ProgressBarSide2Y, ProgressBarSide2Width, ProgressBarSide2Height;
float ForwardX, ForwardY, ForwardWidth, ForwardHeight;
float ReverseX, ReverseY, ReverseWidth, ReverseHeight;
float SkipX, SkipY, SkipWidth, SkipHeight;
float ReplayX, ReplayY, ReplayWidth, ReplayHeight;
float VolumeX, VolumeY, VolumeWidth, VolumeHeight;
float LoopX, LoopY, LoopWidth, LoopHeight;
float ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
//
void divs() {
  population();
  drawRects();
 //End DIVS
population(); 
}
void population () {
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  albumCoverX = appWidth*25/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*50/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  playButtonX = appWidth*465/1000;
  playButtonY = appHeight*11/17;
  playButtonWidth = appWidth*1/14;
  playButtonHeight = appHeight*2/16;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  TitleX = appWidth*3/18;
  TitleY = appHeight*1/26;
  TitleWidth = appWidth*2/3;
  TitleHeight = appHeight*1/10;
  ProgressBarX = appWidth*4/12;
  ProgressBarY = appHeight*6/10;
  ProgressBarWidth = appWidth*1/3;
  ProgressBarHeight = appHeight*1/30;
  ProgressBarSide1X = appWidth*69/100;
  ProgressBarSide1Y = appHeight*6/10;
  ProgressBarSide1Width = appWidth*1/40;
  ProgressBarSide1Height = appHeight*1/30;
  ProgressBarSide2X = appWidth*2/7;
  ProgressBarSide2Y = appHeight*6/10;
  ProgressBarSide2Width = appWidth*1/40;
  ProgressBarSide2Height = appHeight*1/30;
  ForwardX = appWidth*55/100;
  ForwardY = appHeight*67/100;
  ForwardWidth = appWidth*1/20;
  ForwardHeight = appHeight*2/25;
  ReverseX = appWidth*40/100;
  ReverseY = appHeight*67/100;
  ReverseWidth = appWidth*1/20;
  ReverseHeight = appHeight*2/25;
  SkipX = appWidth*62/100;
  SkipY = appHeight*675/1000;
  SkipWidth = appWidth*1/25;
  SkipHeight = appHeight*2/30;
  ReplayX = appWidth*34/100;
  ReplayY = appHeight*675/1000;
  ReplayWidth = appWidth*1/25;
  ReplayHeight = appHeight*2/30;
  VolumeX = appWidth*9/10;
  VolumeY = appHeight*6/30;
  VolumeWidth = appWidth*1/40;
  VolumeHeight = appHeight*2/6;
  LoopX = appWidth*20/100;
  LoopY = appHeight*67/100;
  LoopWidth = appWidth*1/20;
  LoopHeight = appHeight*2/25;
  ShuffleX = appWidth*75/100;
  ShuffleY = appHeight*67/100;
  ShuffleWidth = appWidth*1/20;
  ShuffleHeight = appHeight*2/25;
  backgroundImageX = appWidth*25/100;
  backgroundImageY = appHeight*10/100;
  backgroundImageWidth = appWidth*1/2;
  backgroundImageHeight = appHeight*2/4;
} //End Population
//
void drawRects() { //Layout DIVS
  //Layout DIVs
  //Formula: rect(X, Y, Width, Height);
  //
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //
 // int centerX = appWidth*1/2;
//  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(TitleX, TitleY, TitleWidth, TitleHeight);
  rect(ProgressBarX, ProgressBarY, ProgressBarWidth, ProgressBarHeight);
  rect(ProgressBarSide1X, ProgressBarSide1Y, ProgressBarSide1Width, ProgressBarSide1Height);
  rect(ProgressBarSide2X, ProgressBarSide2Y, ProgressBarSide2Width, ProgressBarSide2Height);
  rect(ForwardX, ForwardY, ForwardWidth, ForwardHeight);
  rect(ReverseX, ReverseY, ReverseWidth, ReverseHeight);
  rect(SkipX, SkipY, SkipWidth, SkipHeight);
  rect(ReplayX, ReplayY, ReplayWidth, ReplayHeight);
  rect(VolumeX, VolumeY, VolumeWidth, VolumeHeight);
  rect(LoopX, LoopY, LoopWidth, LoopHeight);
  rect(ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight);
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
} //End drawRectangles
//End DIVS SubProgram
