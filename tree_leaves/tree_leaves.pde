float a;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  a = PI/6;
  //a = map(mouseX, 0, width, 0, PI/2);

  translate(width/2, height);
  stroke(255);
  branch(200, 0);
  //save("tree2.png");
  //noLoop();
}

void branch(float len, int level) {
  stroke(random(255), random(255), 0);
  line(0, 0, 0, -len);

  translate(0, -len);
  len *= 0.7;
  level++;
  if (level < 8) {
    for (int i=0; i<4; i++) {
      if (random(1)>0.5) {
        a = random(PI/6, PI/3);
        pushMatrix();
        rotate(a);
        branch(len, level);
        popMatrix();

        pushMatrix();
        rotate(-a);
        branch(len, level);
        popMatrix();
      }
    }
  }
}
