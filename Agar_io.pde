private static final int W = 500;          // Width of canvas
private static final int H = 600;          // Height of canvas
private static final int NUM_CIRCLES = 15; // Number of circles drawn
private static final float BDIAM = 15f;    // Diameter of little balls
private static float DIAM = 35f;           // Diameter of ball

PFont font;
float x = 250f; // X value of player circle
float y = 300f; // Y value of player circle
float cosAngle = cos(random(0, PI)) + 2; // Random angle between 0 and pie
float sinAngle = sin(random(0, PI)) + 2;
boolean isAuto;
boolean direction;

//
// Create x and y values for smaller circles
//
float[][] circles; 


//
// Function to find distance between two points and detect hits
//
static float distance(float x, float circleX, float y, float circleY)
{
  return sqrt((x - circleX) * (x - circleX) + (y - circleY) * (y - circleY));
}

void setup()
{
  size(W, H);
  noStroke();

  isAuto = keyPressed && keyCode == CONTROL;

  circles = new float[NUM_CIRCLES][2];

  for (int i = 0; i < NUM_CIRCLES; i++)
  {
    circles [i][0] = random(0, 500);
    circles [i][1] = random(100, 600);
  }
}

void draw()
{
  background(85, 20, 250); // Set background colour



  //
  // Draw smaller circles
  //
  fill(213);

  for (int i = 0; i < NUM_CIRCLES; i++)
    ellipse(circles[i][0], circles[i][1], BDIAM, BDIAM);

  fill(190, 60, 220);
  ellipse(x, y, DIAM, DIAM); // Draw player circle

  //
  // Check for hits
  //
  for (int i = 0; i < NUM_CIRCLES; i++)
    if (distance(x, circles[i][0], y, circles[i][1]) <= DIAM / 2)
    {
      circles[i][0] = random(0, W);
      circles[i][1] = random(100, 600);
      DIAM += 2;
    }

  fill(0);

  font = createFont("Source Sans Pro", 30);
  textFont(font);
  text("Mass is: " + DIAM, 5, 50);
  font = createFont("Source Sans Pro", 15);
  textFont(font);
  text("X = " + x, 200, 50);
  text("Y = " + y, 400, 50);


  // if ( isAuto == true)
  // {

  x += cosAngle;
  y += sinAngle;

  if (x >= W - DIAM / 2 || x <= DIAM / 2)
    cosAngle = -cosAngle;

  if (y >= H - DIAM / 2|| y <= DIAM / 2)
    sinAngle = -sinAngle;

  // } 
  // else
  // {
  //   //
  //   // Detect for key press and move player on screen accordingly
  //   //
  //   if (keyPressed)
  //   {
  //     if (key == 'w' || keyCode == UP)
  //       y -= 3;

  //     if (key == 's' || keyCode == DOWN)
  //       y += 3;

  //     if (key == 'd' || keyCode == RIGHT)
  //       x += 3;

  //     if (key == 'a' || keyCode == LEFT)
  //       x -= 3;
  //   }
  // }
}
