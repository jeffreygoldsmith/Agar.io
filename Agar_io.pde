private static final int W = 500;                // Width of canvas
private static final int H = 600;                // Height of canvas
private static final int NUM_CIRCLES = 15;       // Number of circles drawn
private static final int T_WIN_X = 170;          // "You win!" text x
private static final int T_WIN_Y = 300;          // "You win!" text y
private static final int T_AGAIN_X = 177;        // "Play again?" text x
private static final int T_AGAIN_Y = 365;        // "Play again?" text y
private static final int RECT_X = 170;           // Rectangle x
private static final int RECT_Y = 325;           // Rectangle y
private static final int RECT_X_SIZE = 180;      // Rectangle size x
private static final int RECT_Y_SIZE = 60;       // Rectangle size y
private static final int RECT_CURVE_SIZE = 7;    // Corner curvature of the rectangle
private static final float BDIAM = 15f;          // Diameter of little balls 
private static float DIAM = 450f;                // Diameter of ball

PFont font;
float x = 250f; // X value of player circle
float y = 300f; // Y value of player circle
float cosAngle = cos(random(0, PI)) + 2; // Random angle between 0 and PI for x + speed
float sinAngle = sin(random(0, PI)) + 2; // Random angle between 0 and PI for y + speed
boolean isAuto; // Boolean to detect when to run autorun

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

  isAuto = keyPressed && keyCode == SHIFT;

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


  if ( isAuto == true)
  {
    x += cosAngle;
    y += sinAngle;

    if (x >= W - DIAM / 2 || x <= DIAM / 2)
      cosAngle = -cosAngle;

    if (y >= H - DIAM / 2|| y <= DIAM / 2)
      sinAngle = -sinAngle;
  } else
  {
    //
    // Detect for key press and move player on screen accordingly
    //
    if (keyPressed)
    {
      if (key == 'w' || keyCode == UP)
        y -= 3;

      if (key == 's' || keyCode == DOWN)
        y += 3;

      if (key == 'd' || keyCode == RIGHT)
        x += 3;

      if (key == 'a' || keyCode == LEFT)
        x -= 3;
    }
  }

  if (DIAM >= 700)
  {
    background(190, 60, 220);

    //
    // Display "You Win!" text
    //
    fill(255); // Change colour to white
    font = createFont("Source Sans Pro", 50); // Change font size
    textFont(font);
    text("You Win!", T_WIN_X, T_WIN_Y); // Display "You Win!"

    //
    // Display "Play Again?"
    //
    rect(RECT_X, RECT_Y, RECT_X_SIZE, RECT_Y_SIZE, RECT_CURVE_SIZE); // Create rectangle
    fill(0); // Change colour to black
    font = createFont("Source Sans Pro", 35); // Change font size
    textFont(font);
    text("Play Again?", T_AGAIN_X, T_AGAIN_Y); // Display "Play Again?"
  }

  if (mousePressed && mouseX <= RECT_X + RECT_X_SIZE / 2 && mouseX >= RECT_X - RECT_X_SIZE / 2 && mouseY >= RECT_Y - RECT_Y_SIZE / 2 && mouseY <= RECT_Y + RECT_Y_SIZE / 2)
    DIAM = 35;
}
