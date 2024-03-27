class Ball
{
  // member : data to store about a ball
  int x;
  int y;
  float speedX;
  float speedY;
  
  PImage ball1, ball2, ball3;
  
  // constructor
  
  Ball( int x, int y)
  {
    this.x = x;
    this.y = y;
    this.speedX = 30;
    this.speedY = random (-3, 3);
    
    ball1 = loadImage("ball1.png");
    ball2 = loadImage("ball2.png");
    ball3 = loadImage("ball3.png");
  }
  
  void display()
  {
     ball1.resize(50,50);
     
     image(ball1, x, y, 60, 60);
     //ball2.resize(50,50);
     //ball3.resize(50,50);
  }
  
  void move()
  {
    x-=speedX;
    if (x<112 || x>width-190)
    {
      speedX = -speedX;
    }
    y=y+(int)random(-5,5);
  }
  
  void update()
  {
    display();
    move();
  }
}
