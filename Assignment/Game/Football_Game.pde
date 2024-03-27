
Ball ball1, ball2, ball3;
//Net net;

//Net goal;
void setup()
{
  size(1500,800);
  background = loadImage("Pitch.jpeg");
  background.resize(width,height); // set image to be same size as the canvas
  
  ball1 = new Ball(900, 400);
  ball2 = new Ball(1300, 200);
  ball3 = new Ball(1000, 600);
  //net = new Net(100,100);
}

void draw()
{
  image(background, bgX, 0); //draw image to fill the canvas
  ball1.update();
  ball2.update();
  ball3.update();
}
  
