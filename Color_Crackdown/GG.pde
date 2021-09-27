void gameover() {
  background(#ff0000);
  fill(#000000);
  textSize(75);
  text("GAME OVER!", 400, 400);
  textSize(50);
  if (s >= hs) hs = s;
  text("HighScore:"+hs, 400, 50);
  text("Score:"+s, 400, 100);
}

void GGClicks() {
  mode = INTRO;
  s = 0;
  t = 0;
  int p = int(random(0, 6));
  int w = int(random(0, 6));
}
