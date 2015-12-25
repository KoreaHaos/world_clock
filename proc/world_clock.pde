int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

int tickSize, hourTickSize, minTickSize;

void setup() {
  size(640, 360);

  // Set radius of clock dependant on width and height.
  int radius = min(width/2, height) / 2;
  
  // Set lengths of hands based on radius of clock.
  secondsRadius = radius * 0.81;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  tickSize = 0;
  hourTickSize = 5;
  minTickSize = 2;
  // Center points of canvas.
  cx = width / 2;
  cy = height / 2;
}

void draw() {
  
  background(15);
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = (map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI);
  float h2 = h + .5;  

    pushMatrix();
    translate(-1*(width/4), 0);
    drawClock1(h, m, s);
    translate(width/2, 0);
    drawClock1(h2, m, s);
    popMatrix();

  
  // Draw the hands of the clock
}

void drawClock1(float h, float m, float s){
  fill(80);
  noStroke();
    
  // Draw the clock background
  ellipse(cx, cy, clockDiameter, clockDiameter);
  stroke(0);
  // The second hand.
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  stroke(255);
  // The minute hand.
  strokeWeight(3);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  // The hour hand.
  stroke(177);
  strokeWeight(6);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  // Draw the minute ticks
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    
    if(a%5 == 0){
    noStroke();
    fill(0);
    tickSize = hourTickSize;
    }
    else {
    noStroke();
    
    fill(255);
    tickSize = minTickSize;    
    }
    
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    ellipse(x, y, tickSize, tickSize);
    //vertex(x, y);
  }
  endShape();

}