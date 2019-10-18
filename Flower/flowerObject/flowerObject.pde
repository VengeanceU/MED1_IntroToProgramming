class Flower {

  // Variables

  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  float xspeed = random(-10, 10);
  float yspeed = random(-10, 10);

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
  }

  void display () {

    float ballX;
    float ballY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      //  ballX=width/2 + r*cos(i);
      //  ballY=height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(255, 255, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
  void move () {
    x += xspeed;
    y += yspeed;
  }
  void move2 () {
    x += xspeed;
    y += yspeed;
  }
  void move3 () {
    x += xspeed;
    y += yspeed;
  }
  void boundries() {
    if (x >= width-r || x<=0+r) {
      xspeed *=-1;
    }

    if (y > height-r || y<0+r) {
      yspeed *= -1;
    }
  }
  void collition(Flower other) {
    float d = dist(x,y,other.x,other.y);
    if (d < r + other.r) {
    yspeed *= -1;
    xspeed *= -1;
    petalColor = int (random(#000000,#FFFFFF));
    }
  
  }
}
