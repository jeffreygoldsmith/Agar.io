private static final int W = 500;          // Width of canvas
private static final int H = 600;          // Height of canvas
private static final float BDIAM = 15f;    // Diameter of little balls
private static float DIAM = 35f;           // Diameter of ball


float x = 250f; // X value of player circle
float y = 300f; // Y value of player circle

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

void setup()
{
  size(W, H);
  noStroke();
}

void draw()
{
  background(85, 20, 250); // Set background colour
  translate(0, height); // Invert ordinate
  scale(1, -1);

  //
  // Draw smaller circles
  //
  fill(213);
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

  fill(190, 60, 220);
  ellipse(x, y, DIAM, DIAM); // Draw player circle


  //
  // Check for hits
  //
  if (distance(x, circleX[0], y, circleY[0]) <= DIAM / 2)
  {
    circleX[0] = random(0, 500);
    circleY[0] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[1], y, circleY[1]) <= DIAM / 2)
  {
    circleX[1] = random(0, 500);
    circleY[1] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[2], y, circleY[2]) <= DIAM / 2)
  {
    circleX[2] = random(0, 500);
    circleY[2] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[3], y, circleY[3]) <= DIAM / 2)
  {
    circleX[3] = random(0, 500);
    circleY[3] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[4], y, circleY[4]) <= DIAM / 2)
  {
    circleX[4] = random(0, 500);
    circleY[4] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[5], y, circleY[5]) <= DIAM / 2)
  {
    circleX[5] = random(0, 500);
    circleY[5] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[6], y, circleY[6]) <= DIAM / 2)
  {
    circleX[6] = random(0, 500);
    circleY[6] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[7], y, circleY[7]) <= DIAM / 2)
  {
    circleX[7] = random(0, 500);
    circleY[7] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[8], y, circleY[8]) <= DIAM / 2)
  {
    circleX[8] = random(0, 500);
    circleY[8] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[9], y, circleY[9]) <= DIAM / 2)
  {
    circleX[9] = random(0, 500);
    circleY[9] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[10], y, circleY[10]) <= DIAM / 2)
  {
    circleX[10] = random(0, 500);
    circleY[10] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[11], y, circleY[11]) <= DIAM / 2)
  {
    circleX[11] = random(0, 500);
    circleY[11] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[12], y, circleY[12]) <= DIAM / 2)
  {
    circleX[12] = random(0, 500);
    circleY[12] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[13], y, circleY[13]) <= DIAM / 2)
  {
    circleX[13] = random(0, 500);
    circleY[13] = random(0, 600);
    DIAM += 2;
  }

  if (distance(x, circleX[14], y, circleY[14]) <= DIAM / 2)
  {
    circleX[14] = random(0, 500);
    circleY[14] = random(0, 600);
    DIAM += 2;
  }

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
