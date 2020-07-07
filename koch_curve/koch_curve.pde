ArrayList<KC> lines;

void setup() {
  size(800, 800);

  lines = new ArrayList<KC>();
  PVector start = new PVector(0, height/2);
  PVector end = new PVector(width, height/2);
  lines.add(new KC(start, end));
}
void draw() {
  background(0);

  for (KC l : lines) {
    l.display();
  }
}

void keyPressed() {
  if (key == ' ') {
    gen();
  }
}

void gen() {
  ArrayList next = new ArrayList<KC>();
  for (KC l : lines) {
    PVector a = l.geta();
    PVector b = l.getb();
    PVector c = l.getc();
    PVector d = l.getd();
    PVector e = l.gete();

    next.add(new KC(a, b));
    next.add(new KC(b, c));
    next.add(new KC(c, d));
    next.add(new KC(d, e));
  }
  lines = next;
}
