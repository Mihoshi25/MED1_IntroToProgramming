int num = 50;
FlowerClass flower;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

void setup() 
{
  size(1200, 700);
  noStroke();
  fill(255, 102);
}

void draw() 
{
  background(0);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  // Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) 
  {
    // Set the array position to read
    int pos = (indexPosition + i) % num;
    flower = new FlowerClass(6, 20, #FFA000, #C80000, x[pos], y[pos]);
    flower.drawFlower();
  }
}
