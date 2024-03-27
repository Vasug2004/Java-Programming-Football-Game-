// program
Ball ball1, ball2, ball3;
Net goal;
Keeper gloves;

void setup() //initialise anything on screen at start
{
  size(1500, 800);
  background = loadImage("Pitch.jpeg");
  background.resize(width, height); // set image to be same size as the canvas
  ball1 = new Ball(900, 400);
  ball2 = new Ball(1300, 200);
  ball3 = new Ball(1000, 600);
  goal = new Net(19, 20);
  gloves = new Keeper(200,350);
}

void draw() //repeated 60 times a second
{
  image(background, bgX, 0); //draw image to fill the canvas
  ball1.update();
  ball2.update();
  ball3.update();
  goal.display();
  gloves.display();
  gloves.update();
  if (gloves.crash(ball1)==true) // when ball collides with glove, ball disappears.
  {
    print("crashed");
    ball1.y = -100;
    ball1.x = -110;
    ball2.y = -100;
    ball2.x = -110;
    ball3.y = -100;
    ball3.x = -110;
  }
  //if(goal.crash(ball1)==true)
  //print("crashed");
  //ball1.y  = -100;
  //ball1.x  = -110;
  //ball2.y  = -100;
  //ball2.x = -110;
  //ball3.x = -100;
  //ball3.y = -110;
  
  
  //we will check if gloves.crash is true (==)
  //if it is true, you can remove the ball or stop the gamee by calling ball(1 or 2 or 3).caught
}
