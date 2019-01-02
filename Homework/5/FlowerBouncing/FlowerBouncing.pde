FlowerClass f1;

void setup()
{
  size(1000, 700);
  background(#43AF76);
  f1 = new FlowerClass(6, 90, #FFA000, #C80000, width/2, height/2, 5, 5);
}

void draw() 
{
  background(#43AF76);
  f1.moveFlower();
  f1.drawFlower();
}
