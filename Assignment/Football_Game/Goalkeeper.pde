class Keeper
{
  int glovesX = 200; // variable that will not change after the value has been initialised.
  int x;
  int y; 
  int size = 80;
  PImage gloves;
  
  Keeper(int x, int y)
  {
   this.x = x;
   this.y = y; 
   gloves = loadImage("Gloves.png");
   gloves.resize(size,size);
  }
  
  void display()
  {
    image(gloves, glovesX, y);
  }
  
  void update()
  {                   // area of where gloves move when using mousekey.
    if(mouseX < width-1350 && mouseX > width-1450)
   {
     x = mouseX;
   }
  if(mouseY < height-300 && mouseY > height-600)
   {
   y = mouseY;
 }
  }

   
   boolean crash(Ball ball)   // collision for gloves against ball
   {
     return abs(this.x-ball.x) < x && abs(this.y-ball.y) <y;
   }
}

  

 // this will true or false , true of the gloves and the ball are colliding 
  
