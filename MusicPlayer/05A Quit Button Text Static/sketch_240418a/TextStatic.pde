//Global Variables
float titleX, titleY, titleWidth, titleHeight;
float artistX, artistY, artistWidth, artistHeight;
PFont titleFont;
String title="Poopie Fart";
int size;
PFont artistFont;
String artist="Hii";
color purple=#FF00FF;
//
//Display Geoemtry, Display Orientation: landscape, portrait, square
fullScreen();
//
//Concatenation & Inspection of Variables
println("Display Monitor:", "width:"+displayWidth, "\theight:"+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
titleX = appWidth*1/4;
titleY = appHeight*1/9;
titleWidth = appWidth*2/4;
titleHeight = appHeight*1/15;
artistX = appWidth*1/5;
artistY = appHeight*8/10;
artistWidth = appWidth*3/5;
artistHeight = appHeight*5/20;
//
//Single Executed Code: Font SETUP
//Fonts From OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts to choose from, then createFont
size = 55;
titleFont = createFont("Castellar", 18);
artistFont = createFont("CurlzMT", 18);
// Tools / Create Font / Find Font / Use size field / Do not press "OK"
//
//DIVs & rect()s; rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
rect(artistX, artistY, artistWidth, artistHeight);
//
//Repeated Code: draw()ing text
fill(purple); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 98; //Note: CS20 studies size algorithm
textFont(titleFont, size);
text(title, titleX, titleY, titleWidth, titleHeight);
//
fill(purple); //Ink
textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 98; //Note: CS20 studies size algorithm
textFont(artistFont, size);
text(artist, artistX, artistY, artistWidth, artistHeight);
