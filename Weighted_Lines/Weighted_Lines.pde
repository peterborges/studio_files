 import processing.svg.*;

void setup() {
  
  size(350, 580);
  stroke(0);
  randomSeed(millis()); // Seed the random number generator with the current time
  beginRecord(SVG, getClass().getName() + "_" +year() + "_" +month() + "_" +day() + ":" +hour() + "_" +minute() + "_" +second()+".svg"); //getClass is for getting the name of the sketch
  //beginRecord(SVG, "filename.svg");
  noLoop();
}

void draw() {
  // Draw something good here
  // Set the stroke color to black

// Draw 100 random lines
for (int i = 0; i < 75; i++) {
  // Choose a random start and end point for the line
  float x1 = random(0, width);
  float y1 = random(0, height);
  float x2 = random(0, width);
  float y2 = random(height - 10, height);  // Weight the end point towards the bottom of the canvas

  // Draw the line
  line(x1, y1, x2, y2);
}

}
