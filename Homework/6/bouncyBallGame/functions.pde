// Gravity
float gravity = 1;
float airfriction = 0.0001;
float friction = 0.1;

// Goal
float goalX1 = 800;
float goalY1 = 200;
float goalX2 = 150;
float goalY2 = 25;
int points = 0;

// Paddle
color paddleColor = color(#FA0032);
float paddleHeight = 15;
float paddleWidth = 200;
int paddleBounceRate = 20;

// Score
void score(BallClass ball)
{
  if ((dist(ball.posX, ball.posY, goalX1, goalX2) <= ball.ballSize) && (ball.collision == false)) 
  {
    points = points + 1;
    ball.collision = true;
  } else if ((dist(ball.posX, ball.posY, goalX1, goalX2) >= ball.ballSize) && (ball.collision == true))
  {
    ball.collision = false;
  }
}

void drawPaddle()
{
  fill(paddleColor);
  rectMode(CENTER);
  rect(mouseX, mouseY, paddleWidth, paddleHeight);
}

void watchPaddleBounce(BallClass ball)
{
  float overhead = mouseY - pmouseY;
  if ((ball.posX+(ball.ballSize/2) > mouseX-(paddleWidth/2)) && (ball.posX-(ball.ballSize/2) < mouseX+(paddleWidth/2))) 
  {
    if (dist(ball.posX, ball.posY, ball.posX, mouseY)<=(ball.ballSize/2)+abs(overhead)) 
    {
      ball.makeBounceBottom(mouseY);
      // racket moving up
      if (overhead<0) 
      {
        ball.posY+=overhead;
        ball.speedVert+=overhead;
        ball.speedHorizon = (ball.posX - mouseX)/5;
      }
    }
  }
}
