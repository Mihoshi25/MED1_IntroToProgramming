// A polar coordinate
float r = 0.0;
float theta = 0.0;
float circleSize = 0.0;
float blue = 0.0;
float increment = 0.1;

void setup()
{
  size(200, 200);
  background(255);
}

void draw()
{
  float s = noise(circleSize) * 20;
  float b = noise(blue) * 255;
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Applying noise
  circleSize += increment;
  blue += increment;

  noStroke();
  fill(0, 0, b);
  ellipse(x + width/2, y + height/2, s, s);

  // Increment the angle
  theta += 0.01;

  // Increment the spiral
  r += 0.05;
}
