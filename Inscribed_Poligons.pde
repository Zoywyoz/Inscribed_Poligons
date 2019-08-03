float sds = 3;
float angle = 5;
float limr = 2;
int n = 0;
int b = 0;

void setup() {
  size(800, 800);
}

void draw() {
  float r = 300;
   //b = 0;
   //if (n%2 == 0) b = 255;
  background(b);
  translate(width / 2, height / 2);
  stroke(255 - b);
  strokeWeight(1);
  noFill();
  rotate(radians(n));
  while (r > limr) {
    beginShape();
    for (float a = 0; a < TWO_PI; a += TWO_PI / sds) {
      float x = cos(a) * r;
      float y = sin(a) * r;
      vertex(x, y);
    }
    endShape(CLOSE);
    rotate(radians(angle));
    r *= sin(radians(90 * (1 - 2 / sds))) / sin(radians(90 * (1 + 2 / sds) - angle));
  }
  n++;
  sds += 0.1;
  // println(sds);
  if (sds > 15) limr += 3;
  // angle -= 0.1;
}
