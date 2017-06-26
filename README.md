# Rotating-Shapes

void setup() {
  size(720, 480);
}

void draw() {
  background(102);
  
  pushMatrix();
  translate(width*0.2, height*0.5);
  rotate(frameCount / 10.0);
  polygon(0, 0, 82, 3);  // Triangle
  fill(255,0,0);
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 20.0);
  polygon(0, 0, 80, 6);  // Hexagon
  fill(0,255,0);
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / 40.0);
  polygon(0, 0, 70, 12);  // Dodecegon
  fill(0,0,255);
  popMatrix();
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
