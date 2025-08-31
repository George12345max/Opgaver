// Variabler fra Task 5
int numberOfCircles;
float circleSize;

float x, y;

int counter = 0;
int rowCounter = 0;

// 6.a – farvevariabler
int red, green, blue;

void setup(){
  size(400,400);

  numberOfCircles = 30;
  circleSize = (float) width / numberOfCircles;
  ellipseMode(CORNER);

  // 6.b – startfarve = hvid
  red = 255;
  green = 255;
  blue = 255;
}

void draw(){
  x = circleSize * counter;
  y = circleSize * rowCounter;

  // 6.c – ændr farve kun ved første cirkel i rækken
  red   = (counter == 0) ? (int) random(256) : red;
  green = (counter == 0) ? (int) random(256) : green;
  blue  = (counter == 0) ? (int) random(256) : blue;

  // Brug farverne til cirklerne
  fill(red, green, blue);

  // Tegn cirklen
  ellipse(x, y, circleSize, circleSize);

  // Logik til at rykke til næste position
  counter = (frameCount % numberOfCircles == 0) ? 0 : counter + 1;
  rowCounter = (counter == 0) ? rowCounter + 1 : rowCounter;
}
