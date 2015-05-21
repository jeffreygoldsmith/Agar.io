private static final int W = 500;          // Width of canvas
private static final int H = 600;          // Height of canvas
private static final float BDIAM = 15f;    // Diameter of little balls
private static float DIAM = 35f;           // Diameter of ball

//
// Create x and y values for smaller circles
//
float[] circleX = 
{
  random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500), 
  random(0, 500), random(0, 500), random(0, 500), random(0, 500), random(0, 500)
  };
  float[] circleY =
{
  random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), 
  random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600)
  };

  //
  // Function to find distance between two points and detect hits
  //
  static float distance(float x, float circleX, float y, float circleY)
  {
    return sqrt((x - circleX) * (x - circleX) + (y - circleY) * (y - circleY));
  }

float x = 250f; // X value of player circle
float y = 300f; // Y value of player circle
void setup()
{
  size(W, H);
  noStroke();
}

void draw()
{
  background(0); // Set background colour
  translate(0, height); // Invert ordinate
  scale(1, -1);

  //
  // Draw smaller circles
  //
  ellipse(circleX[0], circleY[0], BDIAM, BDIAM);
  ellipse(circleX[1], circleY[1], BDIAM, BDIAM);
  ellipse(circleX[2], circleY[2], BDIAM, BDIAM);
  ellipse(circleX[3], circleY[3], BDIAM, BDIAM);
  ellipse(circleX[4], circleY[4], BDIAM, BDIAM);
  ellipse(circleX[5], circleY[5], BDIAM, BDIAM);
  ellipse(circleX[6], circleY[6], BDIAM, BDIAM);
  ellipse(circleX[7], circleY[7], BDIAM, BDIAM);
  ellipse(circleX[8], circleY[8], BDIAM, BDIAM);
  ellipse(circleX[9], circleY[9], BDIAM, BDIAM);
  ellipse(circleX[10], circleY[10], BDIAM, BDIAM);
  ellipse(circleX[11], circleY[11], BDIAM, BDIAM);
  ellipse(circleX[12], circleY[12], BDIAM, BDIAM);
  ellipse(circleX[13], circleY[13], BDIAM, BDIAM);
  ellipse(circleX[14], circleY[14], BDIAM, BDIAM);

  ellipse(x, y, DIAM, DIAM); // Draw player circle

  //
  // Detect for key press and move player on screen accordingly
  //
  if (keyPressed)
  {
    if (key == 'w')
      y = (y + 3);

    if (key == 's')
      y = (y - 3);

    if (key == 'd')
      x = (x + 3);

    if (key == 'a')
      x = (x - 3);
  }
}
