class KC {

  PVector start, end;

  KC(PVector s, PVector e) {
    start = s;
    end = e;
  }

  PVector geta() {
    return start.copy();
  }

  PVector getb() {
    PVector dir = PVector.sub(end, start);
    dir.div(3);
    dir = PVector.add(start, dir);
    return dir;
  }

  PVector getc() {
    PVector ref = start.copy();
    PVector dir = PVector.sub(end, start);
    dir.div(3);
    ref.add(dir);
    dir.rotate(-PI/3);
    dir.add(ref);
    return dir;
  }

  PVector getd() {
    PVector dir = PVector.sub(end, start);
    dir.div(3);
    dir.mult(2);
    dir = PVector.add(start, dir);
    return dir;
  }

  PVector gete() {
    return end.copy();
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    noFill();
    line(start.x, start.y, end.x, end.y);
  }
}
