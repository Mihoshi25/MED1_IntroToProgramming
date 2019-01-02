class BallClass
{
  // Fields
  float posX = 500;
  float posY = 350;
  float ballSize = 80;
  float speedHorizon = 10;
  float speedVert = 0;
  // Collision
  boolean collision = false;

  //Constructor
  BallClass(float posX, float posY)
  {
    this.posX = posX;
    this.posY = posY;
  }

  // Methods

  // Draws the ball
  void drawBall()
  {
    noStroke();
    fill(255);
    ellipse(posX, posY, ballSize, ballSize);
  }

  // Make the ball bounce off the ceiling
  void makeBounceTop(float surface)
  {
    posY = surface+(ballSize/2);
    speedVert*=-1;
    speedVert -= (speedVert * friction);
  }

  // Make the ball bouce off the floor
  void makeBounceBottom(float surface)
  {
    posY = surface-(ballSize/2);
    speedVert*=-1;
    speedVert -= (speedVert * friction);
  }
  // Make the ball bouce off the left wall
  void makeBounceLeft(float surface) {
    posX = surface+(ballSize/2);
    speedHorizon*=-1;
    speedHorizon -= (speedHorizon * friction);
  }
  
  // Make the ball bouce off the right wall
  void makeBounceRight(float surface)
  {
    posX = surface-(ballSize/2);
    speedHorizon*=-1;
    speedHorizon -= (speedHorizon * friction);
  }

  // Moving the ball horizontally
  void applyHorizontalSpeed()
  {
    posX += speedHorizon;
    speedHorizon -= (speedHorizon * airfriction);
    if (posX-(ballSize/2) < 0)
    {
      makeBounceLeft(0);
    }
    if (posX+(ballSize/2) > width)
    {
      makeBounceRight(width);
    }
  }

  // Give ball weight
  void applyGravity()
  {
    speedVert += gravity;
    posY += speedVert;
    speedVert -= (speedVert * airfriction);
  }

  // keep ball in the screen
  void keepInScreen()
  {
    // ball hits floor
    if (posY+(ballSize/2) > height) 
    { 
      makeBounceBottom(height);
    }

    // ball hits ceiling
    if (posY-(ballSize/2) < 0) 
    {
      makeBounceTop(0);
    }
  }
}
