import processing.svg.*;

void setup() {
  size(500, 500, SVG, "squiggle.svg");
}

void draw() {
  background(0);
  noFill();
  strokeWeight(2);
  stroke(255);

  for (int y = -8; y < 510; y += 10) {
    beginShape();
    for (int x = -10; x < 530; x += 10) {
      float o = noise(x * 0.02, y * 0.015) * 50 - 25;
      curveVertex(x, y + o);
    }
    endShape();
  }
  
  // Export the sketch as an SVG
  if (frameCount == 1) {
    endRecord();
    exit();
  }
}
