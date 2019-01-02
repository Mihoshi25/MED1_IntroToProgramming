class FlowerClass
{

  // Fields
  int numPetal;
  int radius;
  int colorCenter;
  int colorPetal;
  int posX;
  int posY;

  // Constructor
  FlowerClass(int numPetal, int radius, int colorCenter, int colorPetal, int posX, int posY)
  {
    this.numPetal = numPetal;
    this.radius = radius;
    this.colorCenter = colorCenter;
    this.colorPetal = colorPetal;
    this.posX = posX;
    this.posY = posY;
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
}
