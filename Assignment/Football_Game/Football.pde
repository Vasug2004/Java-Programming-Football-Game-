class Ball
{
  // member : data to store about a ball
  int x;
  int y;
  float speedX;
  float speedY;
  //int counter;
  
  PImage ball1, ball2, ball3;
  //PImage image1, image2, image3, image4;
  
  // constructor
  
  Ball( int x, int y)
  {
    this.x = x;
    this.y = y;
    this.speedX = 5;
    this.speedY = random (-3, 3); //  random speed for when ball deviates up and down
    
    ball1 = loadImage("ball1.png"); // load image to canvas
    //image1 = loadImage("image1.png");
    //image2 = loadImage("image2.png");
    //image3 = loadImage("image3.png");
    //image4 = loadImage("image4.png");
    
  }
  
  void display()
  {
     ball1.resize(50,50); // ball is resized to x =50, y=50
     image(ball1, x, y, 60, 60);
     //if (counter>=0 && counter<10)
     //image(image1, x, y);
     //if(mousePressed == true)
     
     //image(image1, x, y);             // code for animated image of ball rotating
     //else if (counter>=10 && counter<20)
     //image(image2, x, y);
     //else if (counter>=20 && counter<30)
     //image(image3, x, y);
     //else if (counter>= 30 && counter<40)
     //image(image4, x, y);
     //image1.resize(50,50);
     //image2.resize(50,50);
     //image3.resize(50,50);
     //image4.resize(50,50);
     
     
     //counter=0;
     ////ball2.resize(50,50);
     //ball3.resize(50,50);
  }
  
  void move()
  {
    x-=speedX;
    if (x<112 || x>width-190) // ball moves between the area on x-axis of 112-119
    {
      speedX = -speedX;
    }
    y=y+(int)random(-5,5); 
    // ball rotate
    
  }
  
  void update()
  {
    display();
    move();
  }
 
 void crash()
 {
   
   int x=0;
   int y=0;
  //void ball caught set x and y to 0 
}
}
