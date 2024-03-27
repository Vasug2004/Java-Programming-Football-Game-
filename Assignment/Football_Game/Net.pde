class Net
{
  int goalX = 19; //position
  int x;
  int y;
  int size = 180;
  PImage goal;

  Net(int x, int y) 
  {
    this.x = x;
    this.y = y;
    goal = loadImage("Goal.png");
    goal.resize(size, size);
  }

  void display()
  {
    image(goal, goalX, 300);
  }
  
//  boolean crash(Ball ball)    // code for net colliding against ball.
//   {
//     return abs(this.x-ball.x) < x && abs(this.y-ball.y) <y;
//   }
//
}
