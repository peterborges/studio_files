import processing.svg.*;

int m = minute();
int h = hour();
int s = second();
int d = day();
int mo = month();
int yr = year();

void setup() {
  size(50, 160);
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

  // Draw a single long line
  float prevX = startX;
  float prevY = startY;

  for (int i = 0; i < 100; i++) {
    // Generate random end point for the line
    float x = random(width);
    float y = random(height);
    
    // Draw the line
    line(prevX, prevY, x, y);

    // Update the previous point
    prevX = x;
    prevY = y;
  }

  endRecord();
}
