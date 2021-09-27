//Carson Wang
//9/18/2021
//color project

//colors
color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;
color yellow = #fff000;
color purple = #bf00ff;
color orange = #ff5000;

//color and word variables
color []colors;
String []words;
int p = int(random(0, 6)); // had to use p because c was taken
int w = int(random(0, 6));

//50/50
int r = int(random(0,2));

//timer
int t;

PFont Aeroblade;
PImage[] introgif;
int NOF;
int f;
int s;
int hs;
int LBX, LBY;
int RBX, RBY;

int mode;
final int INTRO=0;
final int GAME=1;
final int GG=2;

void setup() {
  frameRate(60);
  size(800, 800,FX2D);
  textAlign(CENTER, CENTER);
  Aeroblade = createFont("Aeroblade.ttf", 1);
  NOF = 90;
  introgif = new PImage[NOF];
  int f = 0;
  while (f < NOF) {
    introgif[f] = loadImage("frame_"+f+"_delay-0.11s.gif");
    f=f+1 ;
  }
  mode=INTRO;
  s=0;
  hs=0;
  LBX=200;
  LBY=700;
  RBX=600;
  RBY=700;
  //colors
  colors = new color[6];
  colors[0] = red;
  colors[1] = green;
  colors[2] = blue;
  colors[3] = yellow;
  colors[4] = purple;
  colors[5] = orange;
  //words
  words = new String[6];
  words[0] = "Red";
  words[1] = "Green";
  words[2] = "Blue";
  words[3] = "Yellow";
  words[4] = "Purple";
  words[5] = "Orange";
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==GG) {
    gameover();
  } else {
    println("Error: mode =" + mode);
  }
}
