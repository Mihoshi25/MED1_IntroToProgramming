class FlowerClass
{

  // Fields
  int numPetal;
  int radius;
  int colorCenter;
  int colorPetal;
  int posX;
  int posY;
  int moveX;
  int moveY;

  // Constructor
  FlowerClass(int numPetal, int radius, int colorCenter, int colorPetal, int posX, int posY, int moveX, int moveY)
  {
    this.numPetal = numPetal;
    this.radius = radius;
    this.colorCenter = colorCenter;
    this.colorPetal = colorPetal;
    this.posX = posX;
    this.posY = posY;
    this.moveX = moveX;
    this.moveY = moveY;
  }

  // Methods
  void drawFlower()
  {
    fill(colorPetal);
    float petalX;
    float petalY;
    for (float i = 0; i < PI * 2; i += 2 * PI/numPetal) 
    {
      petalX = posX + radius * cos(i);
      petalY = posY + radius * sin(i);
      ellipse(petalX, petalY, radius, radius);
    }
    fill(colorCenter);
    ellipse(posX, posY, radius * 1.2, radius * 1.2);
  }

  void moveFlower()
  {
    if ((posX - radius * 1.5 <= 0) || (posX + radius * 1.5 >= width))
    {
      moveX = -moveX;
    }
    if ((posY - radius * 1.5 <= 0) || (posY + radius * 1.5 >= height))
    {
      moveY = -moveY;
    }
    posX = posX + moveX;
    posY = posY + moveY;
  }
}
