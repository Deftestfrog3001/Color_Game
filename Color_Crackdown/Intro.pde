void intro() {
  image(introgif[f], 0, 0, width, height);
  f = f + 1;
  if (f == NOF) {
    f = 0;
  }
  textFont(Aeroblade);
  textSize(40);
  text("Color Crackdown", 400, 370);
  strokeWeight(0);
  fill(#ffffff);
  strokeWeight(1);
  textSize(20);
  text("Click Anywhere to Begin", 400, 420);
}

void INTROClicks() {
  mode = GAME;
}
