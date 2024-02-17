import processing.svg.*;

int m = minute();
int h = hour();
int s = second();
int d = day();
int mo = month();
int yr = year();

void setup() {
  size(70, 160);
  stroke(0); //sets the color used to draw lines
  strokeWeight(1); //sets the thickness of the drawn line
  beginRecord(SVG, m + "," + h + "," + s + "," + d + ":" + mo + ":" + yr +".svg");
  noLoop(); //Stops Processing from continuously executing the code within draw() when used in setup() it should be last
}

void draw() {
  background(255); // Clear the background
  
  // Start the drawing process from the left side of the canvas
  float startX = 0;
  float startY = random(height);

  // Draw a single long curve
  beginShape();
  curveVertex(startX, startY);

  for (int i = 0; i < 10; i++) {
    // Generate random control points for the curve
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    float x3 = random(width);
    float y3 = random(height);
    float x4 = random(width);
    float y4 = random(height);
    
    // Draw the curve
    curveVertex(x1, y1);
    curveVertex(x2, y2);
    curveVertex(x3, y3);
    curveVertex(x4, y4);
  }

  // End the shape
  endShape();

  endRecord();
}
