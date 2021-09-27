void interact() {
}
void mousePressed() {
}
void mouseReleased() {
  if (mode == INTRO) {
    INTROClicks ();
  } else if (mode == GAME) {
    GAMEClicks ();
  } else if (mode == GG) {
    GGClicks ();
  }
}
void mouseDragged() {
}
