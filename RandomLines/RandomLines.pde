import processing.svg.*;

int m = minute();
int h = hour();
int s = second();
int d = day();
int mo = month();
int yr = year();

void setup() {
  size(480, 600);
  stroke(0); //sets the color used to draw lines
  strokeWeight(1); //sets the thickness of the drawn line
  beginRecord(SVG, m + "," + h + "," + s + "," + d + ":" + mo + ":" + yr +".svg");
  noLoop(); //Stops Processing from continuously executing the code within draw() when used in setup() it should be last
}

void draw() {
  // Draw something good here
  for (int i = 0; i < 250; i++) {
  line(random(0, width), random(0, height), random(0, width), random(0, height));
  }

  endRecord();
}
