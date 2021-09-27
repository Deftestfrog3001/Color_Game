void game() {
  
  //background
  strokeWeight(0);
  fill(#ffffff);
  rect(0, 0, 400, 800);
  fill(#000000);
  rect(400, 0, 800, 800);
  
  //buttons
  text("Match", 200, 650);
  button(LBX, LBY, #000000, #ffffff);
  text("No Match", 600, 650);
  button(RBX, RBY, #ffffff, #000000);
  textSize(15);
  text("Score:"+s, 75, 25);
  textSize(30);
  fill(colors[p]);
  text(words[w], 400, 400);

  //timer bar && and func
  t = t + 5;
  if (t >= 700) t = 700;
  fill(#ffffff);
  rect(50, 130, 700, 30);
  fill(#000000);
  rect(50, 130, t, 30);
  if (t >= 700) mode = GG;
  
}

void button(int x, int y, int c, int C) {
  pushMatrix();
  translate(x, y);
  rectMode(CENTER);
  stroke(c);
  fill(C);
  strokeWeight(5);
  ellipse(0, 25, 125, 75);
  arc(0, 25, 100, 50, 0, PI, OPEN);
  ellipse(0, 0, 100, 50);
  line(50, 25, 50, 0);
  line(-50, 25, -50, 0);
  rectMode(CORNER);
  popMatrix();
}

void GAMEClicks() {
  if (mouseX < width/2) {
    if (p == w) {
      s= s + 1;
      t = 0;
      w = int(random(0, 6));
      p = int(random(0, 6));
      r = int(random(0, 2));

      //50/50
      if (r >= 1) {
        w = int(random(0, 6));
        p = w;
      } else { 
        while (p == w) {
          w = int(random(0, 6));
          p = int(random(0, 6));
        }
      }
    } else {
      mode = GG;
    }
  } else {
    if (p == r) {
      mode = GG;
    } else {
      s = s + 1;
      t = 0;
      w = int(random(0, 6));
      p = int(random(0, 6));
      r = int(random(0, 2));

      //50/50
      if (r >= 1) { 
        p = w;
      } else {
        while (p == w) {
          w = int(random(0, 6));
          p = int(random(0, 6));
        }
      }
    }
  }
  println(p,w,r);
}
