private static final int W = 500;          // Width of canvas
private static final int H = 600;          // Height of canvas
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
