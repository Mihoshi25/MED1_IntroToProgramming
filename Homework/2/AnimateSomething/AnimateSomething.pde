int posX;
int posY;
int speedX;
int speedY;

void setup()
{
  size(1500, 900);
  posX = 50;
  posY = 50;
  speedX = 5;
  speedY = 5;
}

void draw()
{
  background(150);
  ellipse(posX, posY, 50, 50);
  if ((posX-25 <= 0)||(posX+25 >= width))
  {
    speedX = -speedX;
  }
  if ((posY-25 <= 0)||(posY+25 >= height))
  {
    speedY = -speedY;
  }
  posX = posX + speedX;
  posY = posY + speedY;
}
