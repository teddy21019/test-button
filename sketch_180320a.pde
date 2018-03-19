int circleX, circleY;  // Position of circle button
int circleSize = 93;   // Diameter of circle
color circleColor, baseColor;
color circleHighlight;
color currentColor;

boolean circleOver = false;

void setup() {
  size(300, 300);

  circleColor = color(255);
  circleHighlight = color(204);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = width/2;
  circleY = height/2;

  ellipseMode(CENTER);
}

void draw() {
  update();
  background(currentColor);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update() {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;}
    else {
    circleOver  = false;
  }
}

void mousePressed() {
  if (circleOver) {
    print("yes\n");
  }
}


boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}