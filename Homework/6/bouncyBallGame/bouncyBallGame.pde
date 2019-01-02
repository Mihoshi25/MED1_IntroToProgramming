
BallClass[] balls;


void setup() 
{
  size(1500, 700);
  background(0);
  balls = new BallClass[3];
  balls[0] = new BallClass(200,400);
  balls[1] = new BallClass(500,300);
  balls[2] = new BallClass(600,800);
}

void draw()
{
  // Background  
  background(50);

  // Paddle
  drawPaddle();

  // Goal
  fill(#FA0032);
  rect(goalX1, goalY1, goalX2, goalY2);

  textSize(20);
  text("score = " + points, 10, 20);
  
  // Ball
  for(int i = 0; i < balls.length; i++)
  {
    BallClass ball = balls[i];
  
    watchPaddleBounce(ball);
    score(ball);
    ball.drawBall();
    ball.applyGravity();
    ball.keepInScreen();
    ball.applyHorizontalSpeed();
  }
}
