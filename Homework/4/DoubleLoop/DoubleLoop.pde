int stepX=30;
int stepY=20;

void setup() 
{
  size(600, 400);

  for (int iX=0; iX<width; iX += stepX) 
  {
    for (int iY=0; iY<height; iY += stepY) 
    {
      fill(random(255)); 
      //   fill(random(255),random(255),random(255));
      rect(iX, iY, stepX, stepY);
    }
  }
}

void draw() 
{ //<>//
}

void mouseClicked() 
{
  fill (random(255), 0, 0);
  int rectX = (mouseX/stepX)*stepX;
  int rectY = (mouseY/stepY)*stepY;
  rect(rectX, rectY, stepX, stepY);
}
