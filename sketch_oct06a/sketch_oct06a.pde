/**
* Subtractive Color Wheel
* by Ira Greenberg.
*
* The primaries are red, yellow, and blue. The secondaries are green,
* purple, and orange. The tertiaries are yellow-orange, red-orange,
* red-purple, blue-purple, blue-green, and yellow-green.
*
* Create a shade or tint of the subtractive color wheel using
* SHADE or TINT parameters.
*
* Updated 26 February 2010.
*/

int segs = 24;
int steps = 2;
float rotAdjust = TWO_PI / segs / 2;
float radius;
float segWidth;
float interval = TWO_PI / segs;


void setup() {
  size(400, 400);
  background(255);
  smooth();
  ellipseMode(RADIUS);
  noStroke();
  // make the diameter 90% of the sketch area
  radius = min(width, height) * 0.45;
  segWidth = radius / steps;
  
  // swap which line is commented out to draw the other version
  //drawTintWheel();
  drawShadeWheel();
}


void drawShadeWheel() {
  for (int j = 0; j < steps; j++) {
    color[] cols = {
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0), 
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0),
      color(255-(255/steps)*j, 255-(255/steps)*j, 0), 
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j), 
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),

    };
    for (int i = 0; i < segs; i++) {
      fill(cols[i]);
      arc(width/2, height/2, radius, radius,
          interval*i+rotAdjust, interval*(i+1)+rotAdjust);
    }
    radius -= segWidth;
  }
}


void drawTintWheel() {
  for (int j = 0; j < steps; j++) {
    color[] cols = {
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0), 
      color(255-(255/steps)*j, 0, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0), 
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color(255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color((255/steps)*j, (255/steps)*j, 0),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j), 
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
      color(0, 255-(255/steps)*j, (255/2.5)-((255/2.5)/steps)*j),
    };
    for (int i = 0; i < segs; i++) {
      fill(cols[i]);
      arc(width/2, height/2, radius, radius,
          interval*i+rotAdjust, interval*(i+1)+rotAdjust);
    }
    radius -= segWidth;
  }
}
